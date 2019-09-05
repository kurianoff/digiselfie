import 'package:json_annotation/json_annotation.dart';
import 'api_object.dart';
part 'account.g.dart';

@JsonSerializable()
class AccountCreateRecoverRequest extends ApiObject {
  @JsonKey(includeIfNull: true, name: 'Email', nullable: true)
  String email;
  @JsonKey(includeIfNull: true, name: 'Phone', nullable: true)
  String phone;
  @JsonKey(includeIfNull: false, name: 'ApplicationId', nullable: true)
  String applicationId; //`json:",omitempty"`

  AccountCreateRecoverRequest({ this.email, this.phone, this.applicationId });

  factory AccountCreateRecoverRequest.fromJson(Map<String, dynamic> json) => _$AccountCreateRecoverRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountCreateRecoverRequestToJson(this);
}

@JsonSerializable()
class AccountConfirmationRequest extends ApiObject {
  @JsonKey(includeIfNull: true, name: 'Code', nullable: false)
  String code;

  AccountConfirmationRequest({ this.code });

  factory AccountConfirmationRequest.fromJson(Map<String, dynamic> json) => _$AccountConfirmationRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountConfirmationRequestToJson(this);
}

@JsonSerializable()
class AccountResponse extends ApiObject {
  @JsonKey(includeIfNull: true, name: 'AccountId', nullable: false)
  String accountId;

  AccountResponse({ this.accountId });

  factory AccountResponse.fromJson(Map<String, dynamic> json) => _$AccountResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AccountResponseToJson(this);
}