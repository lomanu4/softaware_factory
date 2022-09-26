import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:softaware_factory/domein/api.dart';


import '../models/user.dart';

class GetAllUsers with ChangeNotifier {
bool isLoading = false;

List<UsersTable> users = [];

 int? userId;


getUsers() async {
isLoading = true;
users = await ApiService().getUsersall();
isLoading = false;
notifyListeners();
}


 }