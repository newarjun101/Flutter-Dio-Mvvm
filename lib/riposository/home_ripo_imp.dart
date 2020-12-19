import 'package:flutter_mvvm/models/Datum.dart';
import 'package:flutter_mvvm/riposository/home_ripo.dart';
import 'package:flutter_mvvm/services/ApiService.dart';
import 'package:flutter_mvvm/views/modelForView/AnnotationsUiModel.dart';
import 'package:flutter_mvvm/views/modelForView/DatumUiModel.dart';
import 'package:flutter_mvvm/views/modelForView/MainUiModel.dart';
import 'package:flutter_mvvm/views/modelForView/SourceUiModel.dart';

class HomeRipoImp implements HomeRipo {
  ApiService service;


  HomeRipoImp(this.service);



  @override
  Future<List<SourceUiModel>> getData() async {
    var result = await service.getPosts();
    var test = result.source.map((e) => e.mapper()).toList();



    return test;



  }

  @override
  Future<AnnotationsUiModel> getAnon() async{
   var result = await service.getPosts();

   var name = result.source.map((e) => e.annotations.mapper()).toList();

  }


}
