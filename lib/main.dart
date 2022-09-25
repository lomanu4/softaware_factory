import 'package:flutter/material.dart';

import 'reponsive/navigatorbarbutton.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Software Factory',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: const NavButtonBar (),
    );
  }
}