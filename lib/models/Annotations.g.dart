// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Annotations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Annotations _$AnnotationsFromJson(Map<String, dynamic> json) {
  return Annotations(
    sourceName: json['sourceName'] as String,
    sourceDescription: json['sourceDescription'] as String,
    datasetName: json['datasetName'] as String,
    datasetLink: json['datasetLink'] as String,
    tableId: json['tableId'] as String,
    topic: json['topic'] as String,
    subtopic: json['subtopic'] as String,
  );
}

Map<String, dynamic> _$AnnotationsToJson(Annotations instance) =>
    <String, dynamic>{
      'sourceName': instance.sourceName,
      'sourceDescription': instance.sourceDescription,
      'datasetName': instance.datasetName,
      'datasetLink': instance.datasetLink,
      'tableId': instance.tableId,
      'topic': instance.topic,
      'subtopic': instance.subtopic,
    };
