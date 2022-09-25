import 'dart:convert';
import 'dart:developer';

import 'package:softaware_factory/models/user.dart';
import 'package:http/http.dart' as http;
class ApiService {
  static const endpoint = 'https://jsonplaceholder.typicode.com';


  Future <List<UsersTable>> getAllUsers() async {
    final response = await http.get(Uri.parse('$endpoint/users'));

    List <UsersTable> myList = [];

    try {
      if ( response.statusCode == 200) {
        final jsonDecode = await json.decode(response.body);
        for (var i in jsonDecode) {
          UsersTable model = UsersTable.fromJson(i);
          myList.add(model);
        }
        return myList;
      } else {
        return myList;
      }
    } catch (e) {
      throw 'Errore'; // snowbar send context
    }
  }
}