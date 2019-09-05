import 'package:json_annotation/json_annotation.dart';
import 'digiselfie.dart';
import 'api_object.dart';
part 'contact_request.g.dart';

@JsonSerializable()
class ContactRequestResponse extends ApiObject {
  @JsonKey(includeIfNull: true, name: 'Items', nullable: true)
  List<PublicProfileDigiselfie> items;

  @JsonKey(includeIfNull: false, name: 'LastKey', nullable: false)
  String lastKey; //`json:"LastKey,omitempty"`

  ContactRequestResponse({this.items, this.lastKey});

  factory ContactRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactRequestResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContactRequestResponseToJson(this);
}
