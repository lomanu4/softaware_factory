import 'dart:convert';


import 'package:softaware_factory/models/user.dart';
import 'package:http/http.dart' as http;

import '../models/comment.dart';
import '../models/post.dart';
class ApiService {
  static const endpoint = 'https://jsonplaceholder.typicode.com';

////////////////////////////////////////////////////////////////////////////////////////////  
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

////////////////////////////////////////////////////////////////////////////////////////////  
////////////////////////////////////////////////////////////////////////////////////////////  
  Future<List<PostModelClass>> getAllPost() async {
    final response =
        await http.get(Uri.parse('$endpoint/posts'));
    List<PostModelClass> mylist = [];

    try {
      if (response.statusCode == 200) {
        final jsonDecode = await json.decode(response.body);
        for (var i in jsonDecode) {
          PostModelClass model = PostModelClass.fromJson(i);
          mylist.add(model);
        }
        return mylist;
      } else {
        return mylist;
      }
    } catch (e) {
      throw 'aaaaaaaaaa';
    }
  } 
////////////////////////////////////////////////////////////////////////////////////////////  
//////////////////////////////////////////////////////////////////////////////////////////// 

  Future<List<PostModelClass>> getPostbyiduser(int id) async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts$id'));
    List<PostModelClass> mylist = [];

    try {
      if (response.statusCode == 200) {
        final jsonDecode = await json.decode(response.body);
        for (var i in jsonDecode) {
          PostModelClass model = PostModelClass.fromJson(i);
          mylist.add(model);
        }
        return mylist;
      } else {
        return mylist;
      }
    } catch (e) {
      throw 'aaaaaaaaaa';
    }
  }
////////////////////////////////////////////////////////////////////////////////////////////  
//////////////////////////////////////////////////////////////////////////////////////////// 
Future<List<CommentModel>> getAllComment(int userId) async {
final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$userId/comments'));
  List<CommentModel> mylist = [];

 try {
  if (response.statusCode == 200) {
    final jsonDecode = await json.decode(response.body);
    for (var i in jsonDecode) {
      CommentModel _model = CommentModel.fromJson(i);
      mylist.add(_model);
    }
    return mylist;
  } else {
    return mylist;
  }
} catch (e) {
  throw 'aaaaaaaaaa';
}

}  
}