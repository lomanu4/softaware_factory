import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:softaware_factory/provider/comment_provider.dart';
import 'package:softaware_factory/provider/post_provider.dart';

import '../models/post.dart';



class Postdetail extends StatefulWidget {
  final  postid;
  final post;
  const Postdetail({
    Key? key,
    required this.postid, required this.post,
  }) : super(key: key);

  @override
  State<Postdetail> createState() => _PostdetailState();
}

class _PostdetailState extends State<Postdetail> {
@override
void initState() {
  super.initState();
 final provider = Provider.of<GetCommentProvider>(context, listen: false);
  provider.getComment(widget.postid!);//update
}
  @override
  Widget build(BuildContext context) {
   Provider.of<GetPostProvider>(context).getPostbyid(widget.postid);
  
   final commentprovider = Provider.of<GetCommentProvider>(context);
    return Scaffold(
        appBar: AppBar(),
        body:  Column(
          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.post),
              ),
            )),
            Text('Comments  ${commentprovider.comment.length}'),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: commentprovider.comment.length,
                itemBuilder: (context, index) {
                  return   
                  ListTile(
                  title:  Text('Comments ${commentprovider.comment[index].id}',style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                  leading: Text('Post ${widget.postid}'),
                  subtitle: Text(commentprovider.comment[index].body.toString(),style: const TextStyle(color: Colors.black),)
                 // )
                  );

                },
               
              ),
            ),
          ],
        ),
          );
  }
}
