import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:softaware_factory/domein/api.dart';

import '../models/comment.dart';
class GetCommentProvider with ChangeNotifier {
bool isLoading = false;

List<CommentModel> comment = [];


getComment(int commentuserid) async {
isLoading = true;
comment = await ApiService().getAllComment(commentuserid);
isLoading = false;
notifyListeners();
}






}