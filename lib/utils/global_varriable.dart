import 'package:flutter/material.dart';

import '../models/user.dart';
import '../screen/feedscreen.dart';
import '../screen/profilescreen.dart';
UsersTable user = UsersTable(id: 1, name: 'Nico', username: 'username', email: 'email', phone: 'phone', website: 'website');
List<Widget> homeScreenitems = [
  
  const FeedScreen(),
   ProfileScreen(
    email: user.email,
    name: user.name,
    username: user.username,
  ),
  ];