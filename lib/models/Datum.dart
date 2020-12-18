import 'package:flutter_mvvm/mapper/mapper.dart';
import 'package:flutter_mvvm/views/modelForView/DatumUiModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Datum.g.dart';

@JsonSerializable()
class Datum implements Mapper<DatumUiModel>{
  Datum({
    this.idNation,
    this.nation,
    this.idYear,
    this.year,
    this.population,
    this.slugNation,
  });

  String idNation;
  String nation;
  int idYear;
  String year;
  int population;
  String slugNation;

  factory Datum.fromJson(Map<String,dynamic> json) => _$DatumFromJson(json);

  @override
  DatumUiModel mapper() {
    // TODO: implement mapper
   return DatumUiModel(idNation, nation, idYear, year, population, slugNation);
  }
}