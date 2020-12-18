import 'dart:developer';

import 'package:flutter_mvvm/views/modelForView/PostUiModel.dart';

abstract class PostRipo{

  Future <List<PostUiModel>> getData();



}