// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactRequestResponse _$ContactRequestResponseFromJson(
    Map<String, dynamic> json) {
  return ContactRequestResponse(
    items: (json['Items'] as List)
        ?.map((e) => e == null
            ? null
            : PublicProfileDigiselfie.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    lastKey: json['LastKey'] as String,
  );
}

Map<String, dynamic> _$ContactRequestResponseToJson(
        ContactRequestResponse instance) =>
    <String, dynamic>{
      'Items': instance.items,
      'LastKey': instance.lastKey,
    };
