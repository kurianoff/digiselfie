// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiKey _$ApiKeyFromJson(Map<String, dynamic> json) {
  return ApiKey(
    apiKey: json['ApiKey'] as String,
    digiSelfieType: json['DigiSelfieType'] as String,
    userId: json['Id_User'] as String,
    apiSecret: json['ApiSecret'] as String,
    siteUrl: json['SiteURL'] as String,
    siteName: json['SiteName'] as String,
    allowedOriginIPs:
        (json['AllowedOriginIPs'] as List)?.map((e) => e as String)?.toList(),
    callbackUrl: json['CallbackURL'] as String,
    redirectUrl: json['RedirectURL'] as String,
    authClientId: json['AuthClientID'] as String,
    authClientSecret: json['AuthClientSecret'] as String,
    deleted: json['Deleted'] == null
        ? null
        : BigInt.parse(json['Deleted'] as String),
    ttl: json['Ttl'] == null ? null : BigInt.parse(json['Ttl'] as String),
  )..type = json['Type'] as String;
}

Map<String, dynamic> _$ApiKeyToJson(ApiKey instance) {
  final val = <String, dynamic>{
    'Type': instance.type,
    'ApiKey': instance.apiKey,
    'DigiSelfieType': instance.digiSelfieType,
    'Id_User': instance.userId,
    'ApiSecret': instance.apiSecret,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('SiteURL', instance.siteUrl);
  val['SiteName'] = instance.siteName;
  val['AllowedOriginIPs'] = instance.allowedOriginIPs;
  val['CallbackURL'] = instance.callbackUrl;
  writeNotNull('RedirectURL', instance.redirectUrl);
  val['AuthClientID'] = instance.authClientId;
  val['AuthClientSecret'] = instance.authClientSecret;
  writeNotNull('Deleted', instance.deleted?.toString());
  writeNotNull('Ttl', instance.ttl?.toString());
  return val;
}
