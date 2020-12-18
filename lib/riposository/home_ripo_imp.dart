import 'package:flutter_mvvm/riposository/home_ripo.dart';
import 'package:flutter_mvvm/services/ApiService.dart';
import 'package:flutter_mvvm/views/modelForView/MainUiModel.dart';

class HomeRipoImp implements HomeRipo {
  ApiService service;

  HomeRipoImp(this.service);


  @override
  Future<List<MainUiModel>> getData() async {
    var result = await service.getPosts();

    return result.map((e) => e.mapper()).toList();
  }


}
