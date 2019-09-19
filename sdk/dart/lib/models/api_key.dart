import 'mixins.dart';
import 'api_object.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_key.g.dart';

@JsonSerializable()
class ApiKey extends ApiObject with TypedObjectMixin {
  @JsonKey(includeIfNull: true, name: 'ApiKey', nullable: false)
  String apiKey;
  @JsonKey(includeIfNull: true, name: 'DigiSelfieType', nullable: true)
  String digiSelfieType;
  @JsonKey(includeIfNull: true, name: 'Id_User', nullable: false)
  String userId;
  @JsonKey(includeIfNull: true, name: 'ApiSecret', nullable: true)
  String apiSecret;
  @JsonKey(includeIfNull: false, name: 'SiteURL', nullable: true)
  String siteUrl;
  @JsonKey(includeIfNull: true, name: 'SiteName', nullable: true)
  String siteName;
  @JsonKey(includeIfNull: true, name: 'AllowedOriginIPs', nullable: true)
  List<String> allowedOriginIPs;
  @JsonKey(includeIfNull: true, name: 'CallbackURL', nullable: true)
  String callbackUrl;
  @JsonKey(includeIfNull: false, name: 'RedirectURL', nullable: true)
  String redirectUrl;
  @JsonKey(includeIfNull: true, name: 'AuthClientID', nullable: true)
  String authClientId; //`json:"AuthClientID,omitempty"`
  @JsonKey(includeIfNull: true, name: 'AuthClientSecret', nullable: true)
  String authClientSecret;
  @JsonKey(includeIfNull: false, name: 'Deleted', nullable: true)
  BigInt deleted; //`json:"Deleted,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Ttl', nullable: true)
  BigInt ttl; //`json:"ttl,omitempty"`

  ApiKey(
      {this.apiKey,
      this.digiSelfieType,
      this.userId,
      this.apiSecret,
      this.siteUrl,
      this.siteName,
      this.allowedOriginIPs,
      this.callbackUrl,
      this.redirectUrl,
      this.authClientId,
      this.authClientSecret,
      this.deleted,
      this.ttl});

  factory ApiKey.fromJson(Map<String, dynamic> json) => _$ApiKeyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ApiKeyToJson(this);
}

class ApiKeyList {
  List<ApiKey> items;

  ApiKeyList({this.items});

  factory ApiKeyList.fromJson(List<dynamic> parsedJson) {
    List<ApiKey> items = new List<ApiKey>();
    items = parsedJson.map((i) => ApiKey.fromJson(i)).toList();

    return ApiKeyList(items: items);
  }

  List<dynamic> toJson() {
    List result = List<dynamic>();
    for (ApiKey object in this.items) {
      result.add(object.toJson());
    }
    return result;
  }
}
