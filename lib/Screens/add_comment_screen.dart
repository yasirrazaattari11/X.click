import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/comment_box.dart';

class AddComment extends StatefulWidget {
  const AddComment({super.key});

  @override
  State<AddComment> createState() => _AddCommentState();
}

class _AddCommentState extends State<AddComment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: true,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CommentBox(
                    imgSource: 'assets/image/harrybrook.jpg',
                    widget1: Text(
                      'Harry Brook',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    widget2: Text(
                      'Marvelous',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    widget3: Row(
                      children: [
                        Text(
                          '1 mins ago',
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Text(
                                'Like',
                                style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight:
                                         FontWeight.w800 ,
                                    color:Colors.black
                              ),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Row(
                              children: [
                                Text(
                                  '02',
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                                Image(
                                  image: AssetImage('assets/image/commentlike.png'),
                                  filterQuality: FilterQuality.high,
                                  color:
                                      Color(0xff5252C7) ,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommentBox(
                    imgSource: 'assets/image/bruno.png',
                    widget1: Text(
                      'Bruno',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    widget2: Text(
                      'Fabulous',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    widget3: Row(
                      children: [
                        Text(
                          '2 mins ago',
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Like',
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight.w800 ,
                                  color:Colors.black
                              ),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Row(
                              children: [
                                Text(
                                  '02',
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                                Image(
                                  image: AssetImage('assets/image/commentlike.png'),
                                  filterQuality: FilterQuality.high,
                                  color:
                                  Color(0xff5252C7) ,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommentBox(
                    imgSource: 'assets/image/john.jpg',
                    widget1: Text(
                      'John',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    widget2: Text(
                      'Nice! I Love it',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    widget3: Row(
                      children: [
                        Text(
                          '7 mins ago',
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Like',
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight.w800 ,
                                  color:Colors.black
                              ),
                            ),
                            SizedBox(
                              width: 130,
                            ),
                            Row(
                              children: [
                                Text(
                                  '02',
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                                Image(
                                  image: AssetImage('assets/image/commentlike.png'),
                                  filterQuality: FilterQuality.high,
                                  color:
                                  Color(0xff5252C7) ,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommentBox(
                    imgSource: 'assets/image/elias.jpg',
                    widget1: Text(
                      'Elias',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    widget2: Text(
                      'Superb',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    widget3: Row(
                      children: [
                        Text(
                          '10 mins ago',
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Like',
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight.w800 ,
                                  color:Colors.black
                              ),
                            ),
                            SizedBox(
                              width: 122,
                            ),
                            Row(
                              children: [
                                Text(
                                  '02',
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                                Image(
                                  image: AssetImage('assets/image/commentlike.png'),
                                  filterQuality: FilterQuality.high,
                                  color:
                                  Color(0xff5252C7) ,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CommentBox(
                    imgSource: 'assets/image/eliza.jpg',
                      widget1: Text(
                        'Eliza',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                      widget2: Text(
                        'marvelous',
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    widget3: Row(
                      children: [
                        Text(
                          '12 mins ago',
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Like',
                              style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight:
                                  FontWeight.w800 ,
                                  color:Colors.black
                              ),
                            ),
                            SizedBox(
                              width: 122,
                            ),
                            Row(
                              children: [
                                Text(
                                  '02',
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                                Image(
                                  image: AssetImage('assets/image/commentlike.png'),
                                  filterQuality: FilterQuality.high,
                                  color:
                                  Color(0xff5252C7) ,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 320,
                  child: TextField(
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.none,
                    obscureText: false,
                    autofocus: true,
                    style: GoogleFonts.poppins(fontSize: 14),
                    keyboardType: TextInputType.text,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIconColor: Colors.grey,
                      label: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Type Something'),
                        ),
                      ),
                      labelStyle: GoogleFonts.poppins(
                          fontSize: 15, color: Colors.grey),
                      floatingLabelBehavior:
                      FloatingLabelBehavior.never,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(40),
                      color: Color(0xff5252C7),
                    ),
                    child: Center(
                      child: Text('Post',style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                      ),),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
