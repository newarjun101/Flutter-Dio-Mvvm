import 'package:flutter_mvvm/models/Datum.dart';
import 'package:flutter_mvvm/models/Source.dart';
import 'package:flutter_mvvm/views/modelForView/SourceUiModel.dart';

class MainUiModel{

  List<Datum> data;
  List<SourceUiModel> source;

  MainUiModel(this.source);
}