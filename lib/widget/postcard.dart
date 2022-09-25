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
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10
                              ),
                              child:  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                         
                                              '',
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
                                             '' ,// post title,
                                              style: const TextStyle(
                                                  fontFamily: 'Billabong',
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ), // email
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                            onTap: () {
                     // Postdetails
                    },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                               '',// post body
                                //'A residenza sanitaria, in cui verrà prestato servizio, ospita anziani parzialmente e non autosufficienti. l`oss lavorerà su tre turni e si occuperà, in affiancamento al personale sanitario, di assistenza ad anziani parzialmente e non autosufficienti.in particolare si occuperà di- igiene personale, del letto e delle apparecchiature;- assistenza nell’alimentazione e nella vestizione;- aiuto nell’espletamento dei bisogni fisiologici;- posizionamento e mobilizzazioni del paziente.',
                                style: const TextStyle(
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                ],
              ),
            ),
            
          ],
        );
      },
    );
  }
}
