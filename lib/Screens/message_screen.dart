import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/chat_screen.dart';
import 'package:i_xlick/Widgets/comment_box.dart';
import 'package:page_transition/page_transition.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Image(
            image: AssetImage('assets/image/blackbackarrow.png'),
          ),
        ),
        title: Center(
          child: Text(
            'Message',
            style: GoogleFonts.nunito(
                fontSize: 20, fontWeight: FontWeight.w800, color: Colors.black),
          ),
        ),
        actions: [
          Image(
            image: AssetImage('assets/image/wditsquare.png'),
          ),
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, PageTransition(child: ChatScreen(), type: PageTransitionType.fade));
              },
              child: CommentBox(
                imgSource: 'assets/image/harrybrook.jpg',
                widget1: Text(
                  'Harry Brook',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
                widget2: Text(
                  'Hello! How are you?',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                widget3: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1 mins ago',
                      style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                    SizedBox(
                      width: 163,
                    ),
                    Row(
                      children: [
                        Text(
                          '20',
                          style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image(
                          image: AssetImage('assets/image/comments.png'),
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
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
                'Are you free today?',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              widget3: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2 mins ago',
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 163,
                  ),
                  Row(
                    children: [
                      Text(
                        '20',
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff5252C7)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image(
                        image: AssetImage('assets/image/comments.png'),
                      ),
                    ],
                  ),
                ],
              ),
              clr: Color(0xffE3E4FC),
            ),
            SizedBox(height: 10,),
            CommentBox(
              imgSource: 'assets/image/thanpham.png',
              widget1: Text(
                'Thanh Pham',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              widget2: Text(
                'Hello! How are you?',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              widget3: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '3 mins ago',
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 163,
                  ),
                  Row(
                    children: [
                      Text(
                        '20',
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff5252C7)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image(
                        image: AssetImage('assets/image/comments.png'),

                      )
                    ],
                  )
                ],
              ),
              clr: Color(0xffE3E4FC),
            ),
            SizedBox(height: 10,),
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
                'Okay?',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              widget3: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '4 mins ago',
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 163,
                  ),
                  Row(
                    children: [
                      Text(
                        '20',
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image(
                        image: AssetImage('assets/image/comments.png'),
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            CommentBox(
              imgSource: 'assets/image/gibbs.jpg',
              widget1: Text(
                'Gibbs',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              widget2: Text(
                'HAHAHAHHH?',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              widget3: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '5 mins ago',
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 163,
                  ),
                  Row(
                    children: [
                      Text(
                        '20',
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff5252C7)),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image(
                        image: AssetImage('assets/image/comments.png'),

                      )
                    ],
                  )
                ],
              ),
               clr: Color(0xffE3E4FC)
            ),
            SizedBox(height: 10,),
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
                "I'm on my way....",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              widget3: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '5 mins ago',
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 163,
                  ),
                  Row(
                    children: [
                      Text(
                        '20',
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image(
                        image: AssetImage('assets/image/comments.png'),
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            CommentBox(
              imgSource: 'assets/image/steyn.jpg',
              widget1: Text(
                'Steyn',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              widget2: Text(
                "Thanks",
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              widget3: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '5 mins ago',
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  ),
                  SizedBox(
                    width: 163,
                  ),
                  Row(
                    children: [
                      Text(
                        '20',
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image(
                        image: AssetImage('assets/image/comments.png'),
                        color: Colors.grey,
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
