import 'package:flutter/material.dart';

import '../models/post.dart';
import '../service/service_api.dart';

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