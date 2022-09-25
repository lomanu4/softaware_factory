import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/comment_pprovider.dart';
import 'provider/post_provider.dart';
import 'provider/user_provider.dart';
import 'reponsive/navigatorbarbutton.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //expose it to its descendants and rebuilds dependents whenever ChangeNotifier.notifyListeners is called
      providers: [
        ChangeNotifierProvider<GetAllUsers>(create: (_) => GetAllUsers()),
        ChangeNotifierProvider<GetPostProvider>(create: (_) => GetPostProvider()),
         ChangeNotifierProvider<GetCommentProvider>(create: (_) => GetCommentProvider()),
      ],
    child:
    MaterialApp(
      title: 'Software Factory',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: const NavButtonBar (),
     ) );
  }
}