import 'oauth.config.dart';

const String apiLiteral = "/api/v";
const String protocolLiteral = "://";

class ApiEnvironment {
  String server;
  String protocol;
  String apiVersion;
  String applicationId;
  String applicationApiKey;
  String loginUrl;
  OAuthConfig oAuthConfig;

  String serverUrl;
  String apiUrl;

  ApiEnvironment({this.server, this.protocol, this.apiVersion,
  this.applicationId, this.applicationApiKey,
    this.loginUrl, this.oAuthConfig }) {

    this.serverUrl = this.protocol + protocolLiteral + this.server;
    this.apiUrl = this.serverUrl + apiLiteral + this.apiVersion;
    this.loginUrl = this.apiUrl + this.loginUrl;

    oAuthConfig.serverUrl = this.serverUrl;
  }

}