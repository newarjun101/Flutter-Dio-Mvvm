// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MainModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainModel _$MainModelFromJson(Map<String, dynamic> json) {
  return MainModel(
    data: (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Datum.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: (json['source'] as List)
        ?.map((e) =>
            e == null ? null : Source.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$MainModelToJson(MainModel instance) => <String, dynamic>{
      'data': instance.data,
      'source': instance.source,
    };
