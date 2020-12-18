import 'package:dio/dio.dart';
import 'package:flutter_mvvm/models/MainModel.dart';
import 'package:flutter_mvvm/views/modelForView/MainUiModel.dart';
import 'package:retrofit/http.dart';

part 'ApiService.g.dart';

@RestApi(baseUrl: "https://datausa.io/api/")
abstract class ApiService{

 factory ApiService(Dio dio) = _ApiService;

 @GET("data?drilldowns=Nation&measures=Population")
 Future<List<MainModel>> getPosts();


}
