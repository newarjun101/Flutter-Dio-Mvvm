import 'dart:convert';

import 'package:flutter_mvvm/mapper/mapper.dart';
import 'package:flutter_mvvm/views/modelForView/AnnotationsUiModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Annotations.g.dart';

@JsonSerializable()
class Annotations implements Mapper<AnnotationsUiModel>{
  Annotations({
    this.sourceName,
    this.sourceDescription,
    this.datasetName,
    this.datasetLink,
    this.tableId,
    this.topic,
    this.subtopic,
  });

  String sourceName;
  String sourceDescription;
  String datasetName;
  String datasetLink;
  String tableId;
  String topic;
  String subtopic;

  factory Annotations.fromJson(Map<String,dynamic> json) => _$AnnotationsFromJson(json);

  @override
  AnnotationsUiModel mapper() {
    return AnnotationsUiModel(sourceName, sourceDescription, datasetName, datasetLink, tableId, topic, subtopic);
  }
}