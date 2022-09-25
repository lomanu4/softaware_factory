import 'package:flutter/material.dart';

import '../models/comment.dart';
import '../service/service_api.dart';

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
