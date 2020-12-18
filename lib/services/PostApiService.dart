
import 'package:dio/dio.dart';
import 'package:flutter_mvvm/models/post_model.dart';
import 'package:retrofit/http.dart';

part 'PostApiService.g.dart';

@RestApi(baseUrl:"https://jsonplaceholder.typicode.com")
abstract class PostApiService{


 factory PostApiService(Dio dio) = _PostApiService;

 @GET("/posts")
 Future<List<PostModel>> getData();

}