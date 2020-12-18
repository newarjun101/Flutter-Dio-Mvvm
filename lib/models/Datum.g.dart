// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return Datum(
    idNation: json['idNation'] as String,
    nation: json['nation'] as String,
    idYear: json['idYear'] as int,
    year: json['year'] as String,
    population: json['population'] as int,
    slugNation: json['slugNation'] as String,
  );
}

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'idNation': instance.idNation,
      'nation': instance.nation,
      'idYear': instance.idYear,
      'year': instance.year,
      'population': instance.population,
      'slugNation': instance.slugNation,
    };
