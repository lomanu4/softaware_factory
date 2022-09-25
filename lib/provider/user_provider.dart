

import 'package:flutter/material.dart';
import 'package:softaware_factory/models/user.dart';
import 'package:softaware_factory/service/service_api.dart';

class GetAllUsers with ChangeNotifier{
  bool isLoading = false;

  List <UsersTable> users = [];

  getUser() async {
    isLoading = true;

    users = await ApiService().getAllUsers();

    isLoading= false;
    notifyListeners();
  }
}