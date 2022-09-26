

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.name,required this.email,required this.username});
  final name;
  final email;
  final username;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
             
              title: Text(
                widget.name,// user username
              ),
              centerTitle: false,
            ),
            body: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_960_720.png', // user photo
                            ),
                            radius: 40,
                          ),
                      
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Text(
                         widget.username,// user username
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(
                          top: 1,
                        ),
                        child: Text(
                         widget.email, // user bio
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
              
              ],
            ),
          );
  }
}