import 'package:flutter_mvvm/models/Datum.dart';
import 'package:flutter_mvvm/views/modelForView/AnnotationsUiModel.dart';
import 'package:flutter_mvvm/views/modelForView/DatumUiModel.dart';
import 'package:flutter_mvvm/views/modelForView/MainUiModel.dart';
import 'package:flutter_mvvm/views/modelForView/SourceUiModel.dart';

abstract class HomeRipo{

  Future<List<SourceUiModel>> getData();
  Future <AnnotationsUiModel> getAnon();

}