import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/settings_screen.dart';
import 'package:i_xlick/Widgets/comment_box.dart';
import 'package:page_transition/page_transition.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  bool flag1 = false;
  bool flag2 = false;
  bool flag3 = false;
  bool flag4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                'Activity',
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black),
              ),
              Text(
                '(03)',
                style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff5252C7)),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              child: Image(
                image: AssetImage('assets/image/Setting.png'),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: SettingsScreen(),
                        type: PageTransitionType.fade));
              },
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
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
              widget2: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'liked ',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    '"Autumn in my heart"',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5252C7)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 30,
                        width: 63,
                        child: Image(
                          image: AssetImage('assets/image/mypost.png'),
                        ),
                      ),
                      Positioned(
                          top: -1,
                          right: 3,
                          child: Image(
                            image: AssetImage('assets/image/badge.png'),
                            height: 10,
                          ))
                    ],
                  )
                ],
              ),
              widget3: Text(
                '2 mins ago',
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CommentBox(
              imgSource: 'assets/image/john.jpg',
              widget1: Row(
                children: [
                  Text(
                    'John',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        flag1 = !flag1;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        border: Border.all(color: Color(0xff5252C7)),
                      ),
                      child: Center(
                        child: Text(
                          flag1 ? 'Following ' : 'Follow',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5252C7)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              widget2: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'liked ',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    '"Autumn in my heart"',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5252C7)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              widget3: Text(
                '4 mins ago',
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
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
              widget2: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'liked ',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    '"Autumn in my heart"',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5252C7)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 30,
                        width: 63,
                        child: Image(
                          image: AssetImage('assets/image/mypost.png'),
                        ),
                      ),
                      Positioned(
                          top: -1,
                          right: 3,
                          child: Image(
                            image: AssetImage('assets/image/badge.png'),
                            height: 10,
                          ))
                    ],
                  )
                ],
              ),
              widget3: Text(
                '5 mins ago',
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CommentBox(
              imgSource: 'assets/image/thanpham.png',
              widget1: Text(
                'Thanh Pham',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              widget2: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'liked ',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    '"Autumn in my heart"',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5252C7)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 30,
                        width: 63,
                        child: Image(
                          image: AssetImage('assets/image/mypost.png'),
                        ),
                      ),
                      Positioned(
                          top: -1,
                          right: 3,
                          child: Image(
                            image: AssetImage('assets/image/badge.png'),
                            height: 10,
                          ))
                    ],
                  )
                ],
              ),
              widget3: Text(
                '7 mins ago',
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CommentBox(
              imgSource: 'assets/image/harrybrook.jpg',
              widget1: Text(
                'Harry brook',
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              widget2: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'liked ',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    '"Autumn in my heart"',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5252C7)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 30,
                        width: 63,
                        child: Image(
                          image: AssetImage('assets/image/mypost.png'),
                        ),
                      ),
                      Positioned(
                          top: -1,
                          right: 3,
                          child: Image(
                            image: AssetImage('assets/image/badge.png'),
                            height: 10,
                          ))
                    ],
                  )
                ],
              ),
              widget3: Text(
                '7 mins ago',
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CommentBox(
              imgSource: 'assets/image/gibbs.jpg',
              widget1: Row(
                children: [
                  Text(
                    'Gibbs',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 108,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        flag2 = !flag2;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        border: Border.all(color: Color(0xff5252C7)),
                      ),
                      child: Center(
                        child: Text(
                          flag2 ? 'Following' : 'Follow',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5252C7)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              widget2: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'liked ',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    '"Autumn in my heart"',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5252C7)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              widget3: Text(
                '8 mins ago',
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CommentBox(
              imgSource: 'assets/image/eliza.jpg',
              widget1: Row(
                children: [
                  Text(
                    'Eliza',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        flag3 = !flag3;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        border: Border.all(color: Color(0xff5252C7)),
                      ),
                      child: Center(
                        child: Text(
                          flag3 ? 'Following' : 'Follow',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5252C7)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              widget2: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'liked ',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    '"Autumn in my heart"',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5252C7)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              widget3: Text(
                '8 mins ago',
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CommentBox(
              imgSource: 'assets/image/steyn.jpg',
              widget1: Row(
                children: [
                  Text(
                    'Steyn',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        flag4 = !flag4;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        border: Border.all(color: Color(0xff5252C7)),
                      ),
                      child: Center(
                        child: Text(
                          flag4 ? 'Following' : 'Follow',
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5252C7)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              widget2: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'liked ',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    '"Autumn in my heart"',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5252C7)),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              widget3: Text(
                '9 mins ago',
                style: GoogleFonts.nunito(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
