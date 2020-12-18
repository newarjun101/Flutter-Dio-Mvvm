import 'package:flutter_mvvm/mapper/mapper.dart';
import 'package:flutter_mvvm/views/modelForView/SourceUiModel.dart';
import 'package:json_annotation/json_annotation.dart';

import 'Annotations.dart';

part 'Source.g.dart';

@JsonSerializable()

class Source implements Mapper<SourceUiModel>{
  Source({
    this.measures,
    this.annotations,
    this.name,
    this.substitutions,
  });

  List<String> measures;
  Annotations annotations;
  String name;
  List<dynamic> substitutions;

  factory Source.fromJson(Map<String,dynamic> json) => _$SourceFromJson(json);

  @override
  SourceUiModel mapper() {
    return SourceUiModel(name);
  }
  
  

}