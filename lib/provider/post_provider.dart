import 'package:flutter/material.dart';

import 'package:softaware_factory/domein/api.dart';

import '../models/post.dart';

class GetPostProvider with ChangeNotifier {
  bool isLoading = false;

  List<PostModelClass> postModelClass = [];
  List<PostModelClass> postbyid = [];

  getMyData() async {
    isLoading = true;
    postModelClass = await ApiService().getAllPost();

    isLoading = false;
    notifyListeners();
  }

  getPostbyid(postid) async {
    isLoading = true;
    postbyid = await ApiService().getPostbyiduser(postid);
    isLoading = false;
    notifyListeners();
  }
}
