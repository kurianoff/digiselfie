import 'package:json_annotation/json_annotation.dart';
import 'library.dart';

mixin TypedObjectMixin {
  @JsonKey(includeIfNull: true, name: 'Type', nullable: false)
  String type; //`json:"Type,omitempty"`
}

mixin DigitalSelfieUpdatesMixin {
  @JsonKey(includeIfNull: true, name: 'Id', nullable: false)
  String id; //`json:"ID,omitempty"`
  @JsonKey(includeIfNull: false, name: 'LastUpdates',
      fromJson: dateTimeFromEpochUs, toJson: dateTimeToEpochUs)
  DateTime lastUpdates; //`json:"LastUpdates,omitempty"`
}

mixin DigitalSelfieReadOnlyMixin {
  @JsonKey(includeIfNull: true, name: 'Id_User', nullable: false)
  String userId; //`json:"Id_User,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Relations', nullable: true)
  List<String> relations; //`json:"Relations,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Relation', nullable: true)
  String relation; //`json:"Relation,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Muted', nullable: true)
  bool muted; //`json:"Muted,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Credentials', nullable: true)
  String credentials; //`json:"Credentials,omitempty"`
  @JsonKey(includeIfNull: false, name: 'ApplicationId', nullable: true)
  String applicationId; //`json:"ApplicationId,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Deleted',
      fromJson: dateTimeFromEpochUs, toJson: dateTimeToEpochUs)
  DateTime deleted; //`json:"Deleted,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Ttl',
      fromJson: dateTimeFromEpochUs, toJson: dateTimeToEpochUs)
  DateTime ttl; //`json:"ttl,omitempty"`
}

mixin DigitalSelfieWritableMixin {
  @JsonKey(includeIfNull: false, name: 'Company', nullable: true)
  String company; //`json:"Company,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Title', nullable: true)
  String title; //`json:"Title,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Name', nullable: true)
  String name; //`json:"Name, omitempty"`
  @JsonKey(includeIfNull: false, name: 'FirstName', nullable: false)
  String firstName; //`json:"FirstName,omitempty"`
  @JsonKey(includeIfNull: false, name: 'MiddleName', nullable: true)
  String middleName; //`json:"MiddleName,omitempty"`
  @JsonKey(includeIfNull: false, name: 'LastName', nullable: true)
  String lastName; //`json:"LastName,omitempty"`

  @JsonKey(includeIfNull: true, name: 'Nickname', nullable: false)
  String nickname; //`json:"Nickname,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Suffix', nullable: true)
  String suffix; //`json:"Suffix,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Salutation', nullable: true)
  String salutation; //`json:"Salutation,omitempty"`
  @JsonKey(includeIfNull: false, name: 'HashTags', nullable: true)
  String hashTags; //`json:"HashTags,omitempty"`

  @JsonKey(includeIfNull: false, name: 'Photo', nullable: true)
  String photo; //`json:"Photo,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Phone', nullable: true)
  String phone; //`json:"Phone,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Email', nullable: true)
  String email; //`json:"Email,omitempty"`

  @JsonKey(includeIfNull: false, name: 'Phones', nullable: true)
  List<Phone> phones;
  @JsonKey(includeIfNull: false, name: 'Emails', nullable: true)
  List<Email> emails; //`json:"Emails,omitempty"`
  @JsonKey(includeIfNull: false, name: 'SocialProfiles', nullable: true)
  List<SocialProfile> socialProfiles; //`json:"SocialProfiles,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Websites', nullable: true)
  List<Website> websites; //`json:"Websites,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Addresses', nullable: true)
  List<Address> addresses; //`json:"Addresses,omitempty"`

  @JsonKey(includeIfNull: false, name: 'LockId', nullable: true)
  String lockId; //`json:",omitempty"`
}

class ClaimDigiSelfieMixin {
  @JsonKey(includeIfNull: true, name: 'ID', nullable: false)
  String id; //`json:"ID"`
  @JsonKey(includeIfNull: false, name: 'Name', nullable: true)
  String name; //`json:"Name,omitempty"`
  @JsonKey(includeIfNull: false, name: 'FirstName', nullable: false)
  String firstName; //`json:"FirstName,omitempty"`
  @JsonKey(includeIfNull: false, name: 'LastName', nullable: true)
  String lastName; //`json:"LastName,omitempty"`
  @JsonKey(includeIfNull: true, name: 'Nickname', nullable: false)
  String nickname; //`json:"Nickname,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Suffix', nullable: true)
  String suffix; //`json:"Suffix,omitempty"`
  @JsonKey(includeIfNull: false, name: 'HashTags', nullable: true)
  String hashTags; //`json:"HashTags,omitempty"`

  @JsonKey(includeIfNull: false, name: 'Photo', nullable: true)
  String photo; //`json:"Photo,omitempty"`
  @JsonKey(includeIfNull: true, name: 'Phones', nullable: true)
  List<Phone> phones; //`json:"Phones,omitempty"`
  @JsonKey(includeIfNull: true, name: 'SocialProfiles', nullable: true)
  List<SocialProfile> socialProfiles; //`json:"SocialProfiles,omitempty"`
  @JsonKey(includeIfNull: true, name: 'Websites', nullable: true)
  List<Website> websites; //`json:"Websites,omitempty"`
  @JsonKey(includeIfNull: true, name: 'Addresses', nullable: true)
  List<Address> addresses; //`json:"Addresses,omitempty"`
  @JsonKey(includeIfNull: true, name: 'Emails', nullable: true)
  List<Email> emails; //`json:"Emails,omitempty"`

  @JsonKey(includeIfNull: false, name: 'Company', nullable: true)
  String company; //`json:"Company,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Title', nullable: true)
  String title; //`json:"Title,omitempty"`

  @JsonKey(includeIfNull: false, name: 'AuthToken', nullable: true)
  String authToken; //`json:"AuthToken,omitempty"`
}
