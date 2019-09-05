import 'package:json_annotation/json_annotation.dart';
import 'library.dart';

part 'relation.g.dart';

@JsonSerializable()
class Relation extends ApiObject {
  @JsonKey(includeIfNull: true, name: 'Id', nullable: false)
  String id;
  @JsonKey(includeIfNull: true, name: 'Id_DigitalSelfie', nullable: false)
  String digitalSelfieId;
  @JsonKey(includeIfNull: true, name: 'Secondary', nullable: false)
  String secondary;

  @JsonKey(includeIfNull: false, name: 'HashTags', nullable: true)
  String hashTags; // `json:"HashTags,omitempty"`

// Other part digiselfie `Name`
  @JsonKey(includeIfNull: true, name: 'Name', nullable: false)
  String name; // `json:"Name,omitempty"`

// Timestamp when relation has been created.
  @JsonKey(includeIfNull: false, name: 'Created',
      fromJson: dateTimeFromEpochUs, toJson: dateTimeToEpochUs)
  DateTime created;

// Timestamp of the last activity in the relation. For example when a new message is created between relation's
// digiselfies this field is updated.
  @JsonKey(includeIfNull: false, name: 'LastActivity',
      fromJson: dateTimeFromEpochUs, toJson: dateTimeToEpochUs)
  DateTime lastActivity;
// Timestamp of the first activity in the relation.
  @JsonKey(includeIfNull: false, name: 'FirstActivity',
      fromJson: dateTimeFromEpochUs, toJson: dateTimeToEpochUs)
  DateTime firstActivity;

  @JsonKey(includeIfNull: false, name: 'Deleted',
      fromJson: dateTimeFromEpochUs, toJson: dateTimeToEpochUs)
  DateTime deleted; // `json:"Deleted,omitempty"`

  @JsonKey(includeIfNull: false,
      name: 'Muted', nullable: true)
  bool muted; //`json:"Muted,omitempty"`

  Relation({this.id, this.digitalSelfieId, this.secondary, this.hashTags,
    this.name, this.created, this.lastActivity, this.firstActivity,
    this.deleted, this.muted});

  factory Relation.fromJson(Map<String, dynamic> json) => _$RelationFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$RelationToJson(this);
}