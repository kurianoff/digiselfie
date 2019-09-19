import 'package:json_annotation/json_annotation.dart';
import 'api_object.dart';

part 'image.g.dart';

@JsonSerializable()
class Avatar extends ApiObject {
  @JsonKey(includeIfNull: true, name: 'Id', nullable: false)
  String id;

  @JsonKey(includeIfNull: true, name: 'Id_User', nullable: false)
  String userId;
  @JsonKey(includeIfNull: false, name: 'Extension', nullable: true)
  String extension;

  @JsonKey(includeIfNull: false, name: 'Url', nullable: false)
  String url;

  Avatar(
      {this.id,
      this.userId,
      this.extension,
      this.url});

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AvatarToJson(this);
}

class AvatarList {
  List<Avatar> items;

  AvatarList({this.items});

  factory AvatarList.fromJson(List<dynamic> parsedJson) {
    List<Avatar> items = new List<Avatar>();
    items = parsedJson.map((i) => Avatar.fromJson(i)).toList();

    return AvatarList(items: items);
  }

  List<dynamic> toJson() {
    List result = List<dynamic>();
    for (Avatar object in this.items) {
      result.add(object.toJson());
    }
    return result;
  }
}
