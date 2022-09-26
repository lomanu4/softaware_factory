import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:softaware_factory/provider/user_provider.dart';

import 'package:softaware_factory/screns/postdetail.dart';
import 'package:softaware_factory/screns/profilescreen.dart';

import '../provider/post_provider.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {



  @override
  Widget build(BuildContext context) {
    
    
    final userprovider = Provider.of<GetAllUsers>(context).users;
    return Consumer<GetPostProvider>(builder: (context, value, child) {
      return ListView.builder(
          itemCount:userprovider.length,
          itemBuilder: (ctx, index) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
              child: Column(
                children: [
                Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 73, 122, 192)
                              .withOpacity(0.1),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Column(children: [
                          // HEADER SECTION OF THE POST
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 10,
                            ).copyWith(right: 0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return ProfileScreen(email: userprovider[index].email, name: userprovider[index].name, username: userprovider[index].username,
                        
                        );
                        //debugPrint (value.postModelClass[index].id.toString()) ; // send id post for comment id
                      }));
                              },
                              child: Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 18,
                                    child: ClipOval(
                                      child: Image.network(
                                        'https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_960_720.png',
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                         
                                              userprovider[index].email,
                                              // user name by post
                                              style: const TextStyle(
                                                fontFamily: 'Billabong',
                                                fontSize: 20.0,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "${value.postModelClass[index].title}",
                                              style: const TextStyle(
                                                  fontFamily: 'Billabong',
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                
                          InkWell(
                            onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return Postdetail(
                          postid: value.postModelClass[index].id,
                          post: value.postModelClass[index].body,
                        );
                        //debugPrint (value.postModelClass[index].id.toString()) ; // send id post for comment id
                      }));
                    },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${value.postModelClass[index].body}",
                                //'A residenza sanitaria, in cui verrà prestato servizio, ospita anziani parzialmente e non autosufficienti. l`oss lavorerà su tre turni e si occuperà, in affiancamento al personale sanitario, di assistenza ad anziani parzialmente e non autosufficienti.in particolare si occuperà di- igiene personale, del letto e delle apparecchiature;- assistenza nell’alimentazione e nella vestizione;- aiuto nell’espletamento dei bisogni fisiologici;- posizionamento e mobilizzazioni del paziente.',
                                style: const TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                          // IMAGE SECTION OF THE POST

                      

                         

                        
                        ])),
                  
                ],
              )));
    });
  }
}
