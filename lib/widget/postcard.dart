import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Postcard extends StatefulWidget {
  const Postcard({super.key});

  @override
  State<Postcard> createState() => _PostcardState();
}

class _PostcardState extends State<Postcard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 73, 122, 192).withOpacity(0.1),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 3,
                      horizontal: 10
                    ).copyWith(right: 0),
                    child: GestureDetector(
                      onTap: (){
                        // Profile Screeen
                      },
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                            child: ClipOval(
                              child: Image.network('https://cdn.pixabay.com/photo/2016/11/18/23/38/child-1837375_960_720.png'),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            
          ],
        );
      },
    );
  }
}
