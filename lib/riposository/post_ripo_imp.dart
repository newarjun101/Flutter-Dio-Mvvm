import 'package:flutter_mvvm/riposository/post_ripo.dart';
import 'package:flutter_mvvm/services/PostApiService.dart';
import 'package:flutter_mvvm/views/modelForView/PostUiModel.dart';

class PostRipoImp implements PostRipo{

  PostApiService service;
  PostRipoImp(this.service);

  @override
  Future<List<PostUiModel>> getData() async {

    var response = await service.getData();

    var result = response.map((e) => e.mapper()).toList();
    print("Arjun$result");
    return result;
  }
}