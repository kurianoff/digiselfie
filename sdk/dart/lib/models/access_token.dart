import 'package:json_annotation/json_annotation.dart';
import 'api_object.dart';
part 'access_token.g.dart';

/*
	AccessToken string `json:"access_token"`
	TokenType string `json:"token_type,omitempty"`
	ExpiresIn int `json:"expires_in,omitempty"`
	RefreshToken string `json:"refresh_token"`
	Scope string `json:"scope,omitempty"`
 */

@JsonSerializable()
class AccessTokenJar extends ApiObject {
  @JsonKey(includeIfNull: true, name: 'access_token', nullable: false)
  String accessToken;
  @JsonKey(includeIfNull: true, name: 'token_type', nullable: false)
  String type;
  @JsonKey(
      includeIfNull: true, name: 'expires_in', fromJson: _setTokenExpiration)
  DateTime expires;
  @JsonKey(includeIfNull: true, name: 'refresh_token', nullable: false)
  String refreshToken;
  @JsonKey(includeIfNull: false, name: 'scope', nullable: false)
  String scope;

  AccessTokenJar(
      this.accessToken, this.type, this.expires, this.refreshToken, this.scope);

  factory AccessTokenJar.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenJarFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccessTokenJarToJson(this);

  static DateTime _setTokenExpiration(int expiresIn) => expiresIn == null
      ? DateTime.now()
      : DateTime.now().add(Duration(seconds: expiresIn));
}
