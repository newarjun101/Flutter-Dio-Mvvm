import 'package:flutter/foundation.dart';
import 'package:flutter_mvvm/riposository/home_ripo.dart';
import 'package:flutter_mvvm/riposository/post_ripo.dart';
import 'package:flutter_mvvm/views/modelForView/MainUiModel.dart';
import 'package:flutter_mvvm/views/modelForView/PostUiModel.dart';
import 'package:flutter_mvvm/views/modelForView/SourceUiModel.dart';

class HomeviewMoel extends ChangeNotifier {
  HomeRipo ripo;
  PostRipo postRipo;

  HomeviewMoel(this.ripo, this.postRipo);

  List<MainUiModel> list = [];
  List<PostUiModel> posts = [];

  void fetchData() async {
    try {
      var result = await ripo.getData();
      list.addAll(result);
      notifyListeners();
    } catch (e) {
      print("error $e");
    }
  }

  void getPost() async {
    try {
      var result = await postRipo.getData();
      posts.addAll(result);
      print("hello world");
      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
