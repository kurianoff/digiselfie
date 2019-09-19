// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccessTokenJar _$AccessTokenJarFromJson(Map<String, dynamic> json) {
  return AccessTokenJar(
    json['access_token'] as String,
    json['token_type'] as String,
    json['expires_in'] as int,
    json['refresh_token'] as String,
    json['scope'] as String,
  );
}

Map<String, dynamic> _$AccessTokenJarToJson(AccessTokenJar instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.type,
      'expires_in': instance.expires,
      'refresh_token': instance.refreshToken,
      'scope': instance.scope,
    };
