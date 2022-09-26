import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:softaware_factory/provider/user_provider.dart';

import 'provider/comment_provider.dart';
import 'provider/post_provider.dart';
import 'responsive/navigatorbarbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //expose it to its descendants and rebuilds dependents whenever ChangeNotifier.notifyListeners is called
      providers: [
        ChangeNotifierProvider<GetAllUsers>(create: (_) => GetAllUsers()),
        ChangeNotifierProvider<GetPostProvider>(create: (_) => GetPostProvider()),
         ChangeNotifierProvider<GetCommentProvider>(create: (_) => GetCommentProvider()),
      ],
      child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavButtonBar(),
    ));
  }
}


