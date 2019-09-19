// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Avatar _$AvatarFromJson(Map<String, dynamic> json) {
  return Avatar(
    id: json['Id'] as String,
    userId: json['Id_User'] as String,
    extension: json['Extension'] as String,
    url: json['Url'] as String,
  );
}

Map<String, dynamic> _$AvatarToJson(Avatar instance) {
  final val = <String, dynamic>{
    'Id': instance.id,
    'Id_User': instance.userId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Extension', instance.extension);
  val['Url'] = instance.url;
  return val;
}
