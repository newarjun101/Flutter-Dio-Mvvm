import 'package:flutter_mvvm/mapper/mapper.dart';
import 'package:flutter_mvvm/views/modelForView/PostUiModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel implements Mapper<PostUiModel> {
  PostModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory PostModel.fromJson(Map<String,dynamic> json) => _$PostModelFromJson(json);

  @override
  PostUiModel mapper() {

    return PostUiModel(userId, id, title, body);
  }



}
