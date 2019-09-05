import 'package:json_annotation/json_annotation.dart';
import 'library.dart';

part 'digiselfie.g.dart';

@JsonSerializable()
class DigitalSelfie extends ApiObject
    with
        DigitalSelfieUpdatesMixin,
        TypedObjectMixin,
        DigitalSelfieReadOnlyMixin,
        DigitalSelfieWritableMixin {
  DigitalSelfie();

  factory DigitalSelfie.fromJson(Map<String, dynamic> json) =>
      _$DigitalSelfieFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$DigitalSelfieToJson(this);
}

@JsonSerializable()
class DigitalSelfieWritable extends ApiObject
    with
        DigitalSelfieUpdatesMixin,
        TypedObjectMixin,
        DigitalSelfieWritableMixin {
  DigitalSelfieWritable();

  factory DigitalSelfieWritable.fromJson(Map<String, dynamic> json) =>
      _$DigitalSelfieWritableFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$DigitalSelfieWritableToJson(this);
}

@JsonSerializable()
class DigitalSelfieReadOnly extends ApiObject
    with
        DigitalSelfieUpdatesMixin,
        TypedObjectMixin,
        DigitalSelfieReadOnlyMixin {
  DigitalSelfieReadOnly();

  factory DigitalSelfieReadOnly.fromJson(Map<String, dynamic> json) =>
      _$DigitalSelfieReadOnlyFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$DigitalSelfieReadOnlyToJson(this);
}

@JsonSerializable()
class DigiSelfieList extends ApiObject {
  @JsonKey(includeIfNull: true, name: 'Items', nullable: true)
  List<DigitalSelfie> items;
  @JsonKey(includeIfNull: false, name: 'LastKey', nullable: false)
  String lastKey; //`json:"LastKey,omitempty"`

  DigiSelfieList({this.items, this.lastKey});

  factory DigiSelfieList.fromJson(Map<String, dynamic> json) =>
      _$DigiSelfieListFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$DigiSelfieListToJson(this);
}

@JsonSerializable()
class ClaimDigiSelfie extends ApiObject with ClaimDigiSelfieMixin {
  ClaimDigiSelfie();

  factory ClaimDigiSelfie.fromJson(Map<String, dynamic> json) =>
      _$ClaimDigiSelfieFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ClaimDigiSelfieToJson(this);
}

@JsonSerializable()
class PublicProfileDigiselfie extends ApiObject with ClaimDigiSelfieMixin {
  @JsonKey(includeIfNull: true, name: 'QRCode', nullable: true)
  String qrCode; //`json:",omitempty"`

  @JsonKey(includeIfNull: true, name: 'QRCodeId', nullable: false)
  String qrCodeId; //`json:",omitempty"`

  @JsonKey(includeIfNull: false, name: 'ApplicationLinks', nullable: false)
  Map<String, String> applicationLinks; //`json:",omitempty"`

  PublicProfileDigiselfie({this.qrCode, this.qrCodeId, this.applicationLinks});

  factory PublicProfileDigiselfie.fromJson(Map<String, dynamic> json) =>
      _$PublicProfileDigiselfieFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$PublicProfileDigiselfieToJson(this);
}
