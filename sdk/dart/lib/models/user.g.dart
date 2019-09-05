// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['Id'] as String,
    email: json['Email'] as String,
    phone: json['Phone'] as String,
    digiSelfie: json['DigiSelfie'] as String,
    firstName: json['FirstName'] as String,
    middleName: json['MiddleName'] as String,
    lastName: json['LastName'] as String,
    suffix: json['Suffix'] as String,
    salutation: json['Salutation'] as String,
    type: json['Type'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{
    'Id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Email', instance.email);
  writeNotNull('Phone', instance.phone);
  writeNotNull('DigiSelfie', instance.digiSelfie);
  val['FirstName'] = instance.firstName;
  writeNotNull('MiddleName', instance.middleName);
  writeNotNull('LastName', instance.lastName);
  writeNotNull('Suffix', instance.suffix);
  writeNotNull('Salutation', instance.salutation);
  writeNotNull('Type', instance.type);
  return val;
}
