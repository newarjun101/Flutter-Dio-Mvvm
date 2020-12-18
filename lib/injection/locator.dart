

import 'package:dio/dio.dart';
import 'package:flutter_mvvm/riposository/home_ripo.dart';
import 'package:flutter_mvvm/riposository/home_ripo_imp.dart';
import 'package:flutter_mvvm/riposository/post_ripo.dart';
import 'package:flutter_mvvm/riposository/post_ripo_imp.dart';
import 'package:flutter_mvvm/services/ApiService.dart';
import 'package:flutter_mvvm/services/PostApiService.dart';
import 'package:flutter_mvvm/viewModels/home_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setup(){

  locator.registerLazySingleton(() => ApiService(Dio(BaseOptions(contentType: "application/json"))));
  locator.registerLazySingleton(() => PostApiService(Dio(BaseOptions(contentType: "application/json"))));
 // locator.registerLazySingleton(() => ApiService(locator.get<Dio>()));
  locator.registerLazySingleton<HomeRipo>(() => HomeRipoImp(locator.get<ApiService>()));
  locator.registerLazySingleton<PostRipo>(() => PostRipoImp(locator.get<PostApiService>()));
  locator.registerFactory(() => HomeviewMoel(locator.get<HomeRipo>(),locator.get<PostRipo>()));

}