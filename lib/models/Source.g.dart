// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Source _$SourceFromJson(Map<String, dynamic> json) {
  return Source(
    measures: (json['measures'] as List)?.map((e) => e as String)?.toList(),
    annotations: json['annotations'] == null
        ? null
        : Annotations.fromJson(json['annotations'] as Map<String, dynamic>),
    name: json['name'] as String,
    substitutions: json['substitutions'] as List,
  );
}

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'measures': instance.measures,
      'annotations': instance.annotations,
      'name': instance.name,
      'substitutions': instance.substitutions,
    };
