import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'library.dart';
import 'package:http/http.dart' as http;
import 'package:pedantic/pedantic.dart';
import 'package:digiselfie_sdk/models/library.dart';

class ResponseTester {
  int statusCode;

  ResponseTester._(this.statusCode);

  ResponseTester(this.statusCode);

  factory ResponseTester.fromHttpClientResponse(
          [HttpClientResponse response]) =>
      new ResponseTester._(response.statusCode);

  int get code {
    return this.statusCode;
  }

  bool get isOK {
    return _isInRange(200, 299);
  }

  bool get isRedirect {
    return _isInRange(300, 399);
  }

  bool get isNotRight {
    return _isInRange(400, 499);
  }

  bool get isBadRequest {
    return this.statusCode == 400;
  }

  bool get isUnauthorized {
    return this.statusCode == 401;
  }

  bool get isForbidden {
    return this.statusCode == 403;
  }

  bool get isError {
    return _isInRange(500, 599);
  }

  bool _isInRange(int start, int end) {
    return this.statusCode >= start && this.statusCode <= end;
  }
}

class ApiClient {
  ApiEnvironment environment;
  AccessTokenJar accessTokenJar;

  bool get hasToken {
    return !["", null].contains(accessToken);
  }

  String get accessToken {
    if (this.accessTokenJar == null) {
      return "";
    }

    return this.accessTokenJar.accessToken;
  }

  ApiClient(this.environment);

  Api connect() {
    return Api(this);
  }

  Future<Api> login(String apiKey, String secret) async {
    await this.authenticate(apiKey, secret);
    return Api(this);
  }

  Api reconnect(AccessTokenJar credentials) {
    this.accessTokenJar = credentials;

    return Api(this);
  }

  Future<bool> isAccessTokenValid() async {
    String url = this.environment.oAuthConfig.introspectionUrl;

    if (!this.hasToken) {
      throw new ApiException("Client is not authenticated (access token is null).");
    }

    String payload =
        "token: ${this.accessTokenJar.accessToken}\n" +
            "scope: ${this.accessTokenJar.scope}";

    HttpClientResponse response;

    try {
      HttpClientRequest request =
        await HttpClient().openUrl("POST", Uri.parse(url));

      request.headers.add(HttpHeaders.contentTypeHeader,
          "application/x-www-form-urlencoded");

      request.headers.add(HttpHeaders.acceptHeader, "application/json");

      request.write(payload);
      response = await request.close();

    } on ApiException {
      rethrow;
    } catch(e) {
      throw ApiException(e.toString());
    }

    return ResponseTester._(response.statusCode).isOK;
  }

  Future<Api> refreshAccessToken() async {
    String tokenJson = await _callTokenEndpoint("refresh_token",
        "refresh_token=${this.accessTokenJar.refreshToken}");

    return reconnect(
        AccessTokenJar.fromJson(
            JsonDecoder().convert(tokenJson)
        )
    );
  }

  Future<ApiResponse> makeCall(
      String method, String url, List<Cookie> cookies, Object payload) async {
    url = this.environment.apiUrl + url;
    Uri uri;

    print("[$method] Calling " + url);

    try {
      uri = Uri.parse(url);
    } catch (e) {
      throw new ApiException(e.toString());
    }

    HttpClient client = new HttpClient();
    HttpClientResponse response;
    String body;

    try {
      HttpClientRequest request = await client.openUrl(method, uri);

      if (this.hasToken) {
        request.headers
            .add(HttpHeaders.authorizationHeader, "Bearer " + this.accessToken);

        print("Token: " + this.accessToken);
      }

      if (cookies != null) {
        request.cookies.addAll(cookies);

        for (Cookie cookie in cookies) {
          print("Cookie: " + cookie.name + "; Value: " + cookie.value + "\n");
        }
      }

      String requestPayload = "";
      if (payload != null) {

        if (payload is SpecialTypePayload) {
          var sp = payload as SpecialTypePayload;
          request.headers.add(HttpHeaders.contentTypeHeader,
              sp.contentType);
          // extract actual payload from StructuredPayload
          payload = sp.data;
        }

        if (payload is ApiObject) {
          request.headers.add(HttpHeaders.contentTypeHeader,
              "application/json");
          requestPayload = JsonEncoder().convert(payload.toJson());
        } else if (payload is String) {
          requestPayload = payload;
        }

        print("Sending payload: " + requestPayload + "\n");
        request.write(requestPayload);
      }

      response = await request.close();
      print("Status code: " + response.statusCode.toString());

      body = await response.cast<List<int>>().transform(utf8.decoder).join();

      print("Response body: \n" + body + "\n\n");
    } catch (e) {
      throw ApiException(e.toString());
    }

    ApiResponse apiResponse = ApiResponse(body, response.statusCode);

    if (!apiResponse.isOK) {
      throw ApiException(body, code: response.statusCode);
    }

    return apiResponse;
  }

  Future <ApiResponse> uploadAvatar(String url, File file) async {
    if (file == null) {
      throw ApiException("Avatar file is of zero size.");
    }

    url = this.environment.apiUrl + url;
    Uri uri;

    try {
      uri = Uri.parse(url);
    } catch (e) {
      throw new ApiException(e.toString());
    }

    print("[POST] Calling " + url);

    http.MultipartRequest request = http.MultipartRequest("POST", uri);
    //add text fields

    request.headers[HttpHeaders.contentTypeHeader] = "multipart/form-data";
    if (this.hasToken) {
      request.headers[HttpHeaders.authorizationHeader] =
          "Bearer " + this.accessToken;
    }

    String body;
    var response;

    try {
      request.files.add(
          http.MultipartFile.fromBytes("image",
              file.readAsBytesSync(), filename: "image")
      );

      response = await request.send();

      //Get the response from the server
      var responseData = await response.stream.toBytes();
      body = String.fromCharCodes(responseData);

      print ("[Upload Image] Received response: " + body);

    } catch(e) {
      throw ApiException(e.toString());
    }

    return ApiResponse(body, response.statusCode);
  }

  Future<bool> authenticate(String apiKey, String secret) async {
    try {
      String exchangeCode = await this._digithenticate(apiKey, secret);
      this.accessTokenJar = await _oAuthenticate(exchangeCode);
    } on ApiException {
      rethrow;
    } catch (e) {
      throw ApiException(e.toString());
    }

    return true;
  }

  Future<String> _digithenticate(String apiKey, String secret) async {
    String queryString = "?" + "apikey=" + apiKey + "&" + "secret=" + secret;
    String url = ApiEndpoints.Login + queryString;

    ApiResponse response = await makeCall("POST", url, null, null);
    return response.body.replaceAll('"', '');
  }

  Future<void> _getOAuthRolling(String digithentiCode) async {
    OAuthConfig config = this.environment.oAuthConfig;
    String queryString = "?" +
        "client_id=" +
        config.clientId +
        "&" +
        "redirect_uri=" +
        Uri.encodeQueryComponent(config.callbackUri) +
        "&" +
        "response_type=" +
        "code" +
        "&" +
        "scope=" +
        "offline+digiselfie" +
        "&" +
        "state=" +
        digithentiCode;

    String url = config.oAuthUrl + queryString;

    bool redirecting = true;
    List<Cookie> cookies = new List<Cookie>();

    HttpClientResponse response;
    ResponseTester tester = ResponseTester._(500);
    String body;

    try {
      while (redirecting) {
        HttpClientRequest request;

        print("Fetching " + url);
        request = await HttpClient().getUrl(Uri.parse(url));

        for (Cookie cookie in cookies) {
          print("Cookie: " + cookie.name + "; Value: " + cookie.value + "\n");
        }

        request.cookies.addAll(cookies);
        request.followRedirects = false;

        response = await request.close();

        print("Status code: " + response.statusCode.toString());

        tester = ResponseTester._(response.statusCode);

        if (!tester.isRedirect) {
          break;
        }

        url = response.headers[HttpHeaders.locationHeader].first;
        cookies.addAll(response.cookies);
      }

      body = await response.cast<List<int>>().transform(utf8.decoder).join();
    } catch (e) {
      throw ApiException(e.toString());
    }

    if (!tester.isOK) {
      throw ApiException(body, code: response.statusCode);
    }
  }

  Future<AccessTokenJar> _oAuthenticate(String digithentiCode) async {
    Stream<String> accessTokenStream = await _serveAccessToken();
    String streamData;

    try {
      unawaited(_getOAuthRolling(digithentiCode));
    } catch (e) {
      throw ApiException(e.toString());
    }

    streamData =
        await accessTokenStream.first.timeout(new Duration(seconds: 10),
            onTimeout: () => streamData = """Login is taking too long. 
          Please check your internet connection and try again.""");

    try {
      return AccessTokenJar.fromJson(JsonDecoder().convert(streamData));
    } catch (e) {
      throw ApiException(streamData);
    }
  }

  Future<String> _retrieveAccessToken(String code) async {
    return await _callTokenEndpoint("authorization_code", "code=${code}");
  }

  Future<String> _callTokenEndpoint(String grant_type, String query) async {
    OAuthConfig config = this.environment.oAuthConfig;

    String payload = "grant_type=" +
        grant_type +
        "&" +
        query +
        "&redirect_uri=" +
        Uri.encodeQueryComponent(config.callbackUri);

    String url = config.oAuthTokenUrl;

    HttpClientResponse response;
    String body;

    try {
      HttpClientRequest request = await HttpClient().postUrl(Uri.parse(url));

      request.headers.add(
          HttpHeaders.contentTypeHeader, "application/x-www-form-urlencoded");

      List<int> bytes = utf8.encode(config.clientId + ":" + config.secret);
      request.headers.add(
          HttpHeaders.authorizationHeader, "Basic " + base64Url.encode(bytes));

      request.write(payload);

      response = await request.close();

      body = await response.cast<List<int>>().transform(utf8.decoder).join();
    } catch (e) {
      throw ApiException(e.toString());
    }

    ApiResponse apiResponse = ApiResponse(body, response.statusCode);
    if (!apiResponse.isOK) {
      throw ApiException(body, code: response.statusCode);
    }

    return apiResponse.body;
  }

  Future<Stream<String>> _serveAccessToken() async {
    OAuthCallbackHandler handler = this.environment.oAuthConfig.callbackHandler;

    final StreamController<String> onCode = new StreamController();
    HttpServer server = await HttpServer.bind(handler.address, handler.port);

    server.listen((HttpRequest request) async {
      final String code = request.uri.queryParameters["code"];
      request.response
        ..statusCode = 200
        ..headers.set("Content-Type", ContentType.html.mimeType)
        ..write("<html><h1>You can now close this window</h1></html>");
      await request.response.close();
      await server.close(force: true);

      try {
        onCode.add(await _retrieveAccessToken(code));
      } catch (e) {
        onCode.add(e.toString());
      } finally {
        await onCode.close();
      }
    });

    return onCode.stream;
  }
}

class ApiException implements Exception {
  int code = 0;
  String cause;

  ApiException(this.cause, {this.code});

  @override
  String toString() {
    return "Error [${this.code ?? ''}]: ${this.cause}";
  }
}

class ApiResponse extends ResponseTester {
  String body;
  ApiResponse(this.body, int code) : super(code);
}
