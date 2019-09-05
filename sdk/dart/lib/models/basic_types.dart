import 'package:json_annotation/json_annotation.dart';

part 'basic_types.g.dart';

@JsonSerializable()
class SocialProfile {
  @JsonKey(includeIfNull: false, name: 'Type', nullable: true)
  String type; // `json:"Type,omitempty"`
  @JsonKey(includeIfNull: false, name: 'ProfileId', nullable: true)
  String profileId; // `json:"ProfileId,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Url', nullable: true)
  String url; // `json:"Url,omitempty"`

  SocialProfile({this.type, this.profileId, this.url});

  factory SocialProfile.fromJson(Map<String, dynamic> json) =>
      _$SocialProfileFromJson(json);
  Map<String, dynamic> toJson() => _$SocialProfileToJson(this);
}

@JsonSerializable()
class Phone {
  @JsonKey(includeIfNull: false, name: 'Code', nullable: true)
  String code; //`json:"Code,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Number', nullable: false)
  String number; //`json:"Number,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Type', nullable: true)
  String type; //`json:"Type,omitempty"`

  Phone({this.code, this.number, this.type});

  factory Phone.fromJson(Map<String, dynamic> json) => _$PhoneFromJson(json);
  Map<String, dynamic> toJson() => _$PhoneToJson(this);
}

@JsonSerializable()
class Website {
  @JsonKey(includeIfNull: false, name: 'URL', nullable: true)
  String url; //`json:"URL,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Name', nullable: true)
  String name; //`json:"Name,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Description', nullable: true)
  String description; //`json:"Description,omitempty"`
  @JsonKey(includeIfNull: false, name: 'ClientId', nullable: true)
  String clientId; //`json:"ClientId,omitempty"`
  @JsonKey(includeIfNull: false, name: 'ClientSecret', nullable: true)
  String clientSecret; //`json:"ClientSecret,omitempty"`

  Website(
      {this.url,
      this.name,
      this.description,
      this.clientId,
      this.clientSecret});

  factory Website.fromJson(Map<String, dynamic> json) =>
      _$WebsiteFromJson(json);
  Map<String, dynamic> toJson() => _$WebsiteToJson(this);
}

@JsonSerializable()
class Address {
  @JsonKey(includeIfNull: false, name: 'Address1', nullable: true)
  String address1;
  @JsonKey(includeIfNull: false, name: 'Address2', nullable: true)
  String address2;
  @JsonKey(includeIfNull: false, name: 'City', nullable: true)
  String city;
  @JsonKey(includeIfNull: false, name: 'Zip', nullable: true)
  String zip;
  @JsonKey(includeIfNull: false, name: 'State', nullable: true)
  String state;
  @JsonKey(includeIfNull: false, name: 'Country', nullable: true)
  String country;
  @JsonKey(includeIfNull: false, name: 'Type', nullable: true)
  String type;

  Address(
      {this.address1,
      this.address2,
      this.city,
      this.zip,
      this.state,
      this.country,
      this.type});

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Email {
  @JsonKey(includeIfNull: false, name: 'Address', nullable: false)
  String address;
  @JsonKey(includeIfNull: false, name: 'Name', nullable: true)
  String name;
  @JsonKey(includeIfNull: false, name: 'Type', nullable: true)
  String type;

  Email({this.address, this.name, this.type});

  factory Email.fromJson(Map<String, dynamic> json) => _$EmailFromJson(json);
  Map<String, dynamic> toJson() => _$EmailToJson(this);
}
