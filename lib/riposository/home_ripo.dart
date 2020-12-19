import 'package:flutter_mvvm/models/Datum.dart';
import 'package:flutter_mvvm/views/modelForView/AnnotationsUiModel.dart';
import 'package:flutter_mvvm/views/modelForView/DatumUiModel.dart';
import 'package:flutter_mvvm/views/modelForView/MainUiModel.dart';

abstract class HomeRipo{

  Future<MainUiModel> getData();
  Future <AnnotationsUiModel> getAnon();

}