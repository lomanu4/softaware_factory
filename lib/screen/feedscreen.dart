import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/comment_pprovider.dart';
import '../provider/post_provider.dart';
import '../provider/user_provider.dart';
import '../widget/postcard.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  @override
  void initState() {
    super.initState();
    final provider = Provider.of<GetPostProvider>(context, listen: false);
    provider.getMyData();
    Provider.of<GetCommentProvider>(context, listen: false);
    final userprovider = Provider.of<GetAllUsers>(context, listen: false);
    userprovider.getUser();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Postcard(),
    );
  }
}