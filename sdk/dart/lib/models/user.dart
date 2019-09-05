import 'package:json_annotation/json_annotation.dart';
import 'api_object.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends ApiObject {
  @JsonKey(includeIfNull: true, name: 'Id', nullable: false)
  String id;

  @JsonKey(includeIfNull: false, name: 'Email', nullable: true)
  String email; //`json:"Email,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Phone', nullable: true)
  String phone; //`json:"Phone,omitempty"`

  @JsonKey(includeIfNull: false, name: 'DigiSelfie', nullable: true)
  String digiSelfie; // `json:"DigiSelfie,omitempty"`
  @JsonKey(includeIfNull: false, name: 'FirstName', nullable: false)
  String firstName;
  @JsonKey(includeIfNull: false, name: 'MiddleName', nullable: true)
  String middleName; //`json:"MiddleName,omitempty"`
  @JsonKey(includeIfNull: false, name: 'LastName', nullable: true)
  String lastName;
  @JsonKey(includeIfNull: false, name: 'Suffix', nullable: true)
  String suffix; // `json:"Suffix,omitempty"`
  @JsonKey(includeIfNull: false, name: 'Salutation', nullable: true)
  String salutation; //`json:"Salutation,omitempty"`

  @JsonKey(includeIfNull: false, name: 'Type', nullable: true)
  String type; //`json:"Type,omitempty"`

  User(
      {this.id,
      this.email,
      this.phone,
      this.digiSelfie,
      this.firstName,
      this.middleName,
      this.lastName,
      this.suffix,
      this.salutation,
      this.type});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
