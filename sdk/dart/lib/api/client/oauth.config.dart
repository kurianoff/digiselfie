import 'dart:io';

class OAuthCallbackHandler {
  InternetAddress address;
  int port;

  OAuthCallbackHandler({this.address, this.port});
}

class OAuthConfig {
  String clientId;
  String secret;
  String callbackUri;
  String oAuthUrl;
  String oAuthTokenUrl;
  String introspectionUrl;
  OAuthCallbackHandler callbackHandler;

  OAuthConfig(
      {this.clientId,
      this.secret,
      this.callbackUri,
      this.oAuthUrl,
      this.oAuthTokenUrl,
      this.callbackHandler,
      this.introspectionUrl});

  set serverUrl(String serverUrl) {
    serverUrl = serverUrl + "/oauth2";
    this.oAuthUrl = serverUrl + this.oAuthUrl;
    this.oAuthTokenUrl = serverUrl + this.oAuthTokenUrl;
    this.introspectionUrl = serverUrl + this.introspectionUrl;
  }
}
