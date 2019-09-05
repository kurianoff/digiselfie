// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Relation _$RelationFromJson(Map<String, dynamic> json) {
  return Relation(
    id: json['Id'] as String,
    digitalSelfieId: json['Id_DigitalSelfie'] as String,
    secondary: json['Secondary'] as String,
    hashTags: json['HashTags'] as String,
    name: json['Name'] as String,
    created: dateTimeFromEpochUs(json['Created'] as int),
    lastActivity: dateTimeFromEpochUs(json['LastActivity'] as int),
    firstActivity: dateTimeFromEpochUs(json['FirstActivity'] as int),
    deleted: dateTimeFromEpochUs(json['Deleted'] as int),
    muted: json['Muted'] as bool,
  );
}

Map<String, dynamic> _$RelationToJson(Relation instance) {
  final val = <String, dynamic>{
    'Id': instance.id,
    'Id_DigitalSelfie': instance.digitalSelfieId,
    'Secondary': instance.secondary,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('HashTags', instance.hashTags);
  val['Name'] = instance.name;
  writeNotNull('Created', dateTimeToEpochUs(instance.created));
  writeNotNull('LastActivity', dateTimeToEpochUs(instance.lastActivity));
  writeNotNull('FirstActivity', dateTimeToEpochUs(instance.firstActivity));
  writeNotNull('Deleted', dateTimeToEpochUs(instance.deleted));
  writeNotNull('Muted', instance.muted);
  return val;
}
