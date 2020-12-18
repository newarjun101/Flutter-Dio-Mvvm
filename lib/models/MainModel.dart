import 'package:flutter_mvvm/mapper/mapper.dart';
import 'package:flutter_mvvm/views/modelForView/MainUiModel.dart';
import 'package:json_annotation/json_annotation.dart';
import 'Datum.dart';
import 'Source.dart';

part 'MainModel.g.dart';
@JsonSerializable()
class MainModel implements Mapper<MainUiModel>{
  MainModel({
    this.data,
    this.source,
  });

  List<Datum> data;
  List<Source> source;

  factory MainModel.fromJson(Map<String,dynamic> json) => _$MainModelFromJson(json);

  @override
  MainUiModel mapper() {

    return MainUiModel(source.map((e) => e.mapper()).toList());
  }
}