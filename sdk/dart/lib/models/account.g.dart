// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountCreateRecoverRequest _$AccountCreateRecoverRequestFromJson(
    Map<String, dynamic> json) {
  return AccountCreateRecoverRequest(
    email: json['Email'] as String,
    phone: json['Phone'] as String,
    applicationId: json['ApplicationId'] as String,
  );
}

Map<String, dynamic> _$AccountCreateRecoverRequestToJson(
    AccountCreateRecoverRequest instance) {
  final val = <String, dynamic>{
    'Email': instance.email,
    'Phone': instance.phone,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ApplicationId', instance.applicationId);
  return val;
}

AccountConfirmationRequest _$AccountConfirmationRequestFromJson(
    Map<String, dynamic> json) {
  return AccountConfirmationRequest(
    code: json['Code'] as String,
  );
}

Map<String, dynamic> _$AccountConfirmationRequestToJson(
        AccountConfirmationRequest instance) =>
    <String, dynamic>{
      'Code': instance.code,
    };

AccountResponse _$AccountResponseFromJson(Map<String, dynamic> json) {
  return AccountResponse(
    accountId: json['AccountId'] as String,
  );
}

Map<String, dynamic> _$AccountResponseToJson(AccountResponse instance) =>
    <String, dynamic>{
      'AccountId': instance.accountId,
    };
