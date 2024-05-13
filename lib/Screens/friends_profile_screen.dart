import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/challenge_screen.dart';
import 'package:i_xlick/Screens/message_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../Widgets/collections_screen.dart';
import '../Widgets/concave_container.dart';
import '../Widgets/shots_screen.dart';

class FriendsProfile extends StatefulWidget {
  const FriendsProfile({super.key});

  @override
  State<FriendsProfile> createState() => _FriendsProfileState();
}

class _FriendsProfileState extends State<FriendsProfile> {
  bool flag = false;
  int selected_index = 0;
  Widget buildSelectedContent() {
    if (selected_index == 0) {
      return ShotsScreen();
    } else if (selected_index == 1) {
      return ProfileCollectionScreen();
    }
    return SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/splashback.jpg'),
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 70.5,
                    ),
                    Container(
                      color: Colors.transparent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Image(
                                image: AssetImage('assets/image/backarrow.png'),
                                color: Colors.white,
                              ),
                            ),
                            Center(
                              child: Text(
                                '@robertjohn',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  flag = !flag;
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
                                    flag ? 'Following ' : 'Follow',
                                    style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff5252C7)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Stack(
                      children: [
                        ClipPath(
                          clipper: ConcaveClipper(),
                          child: Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 100,
                                ),
                                Text(
                                  'John',
                                  style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'De Nang, Vietnam',
                                  style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                const SizedBox(
                                  height: 23.852,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                    width: double.infinity,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.2)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                '220',
                                                style: GoogleFonts.nunito(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Followers',
                                                style: GoogleFonts.nunito(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '150',
                                                style: GoogleFonts.nunito(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w800,
                                                    color: Colors.black),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Following',
                                                style: GoogleFonts.nunito(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 60),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/image/globef.png'),
                                        filterQuality: FilterQuality.high,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        color: Color(0xff5252C7),
                                        size: 14,
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/image/instagram.png'),
                                        filterQuality: FilterQuality.high,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        color: Color(0xff5252C7),
                                        size: 14,
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/image/facebookwhite.png'),
                                        filterQuality: FilterQuality.high,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selected_index = 0;
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 150,
                                        color: selected_index == 0
                                            ? Color(0xffE3E4FC)
                                            : Colors.transparent,
                                        child: Center(
                                          child: Text(
                                            '200 Shots',
                                            style: GoogleFonts.nunito(
                                                fontSize: 16,
                                                fontWeight: selected_index == 0
                                                    ? FontWeight.w800
                                                    : FontWeight.w400,
                                                color: selected_index == 0
                                                    ? Color(0xff5252C7)
                                                    : Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selected_index = 1;
                                        });
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 150,
                                        color: selected_index == 1
                                            ? Color(0xffE3E4FC)
                                            : Colors.transparent,
                                        child: Center(
                                          child: Text(
                                            '10 Collections',
                                            style: GoogleFonts.nunito(
                                                fontSize: 16,
                                                fontWeight: selected_index == 1
                                                    ? FontWeight.w800
                                                    : FontWeight.w400,
                                                color: selected_index == 1
                                                    ? Color(0xff5252C7)
                                                    : Colors.grey),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20,)
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              child: const CircleAvatar(
                                radius: 45,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage('assets/image/john.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(flex: 1, child: buildSelectedContent()),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, PageTransition(child: ChallengeScreen(), type: PageTransitionType.fade),);
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xff5252C7),
                  ),
                  child: Center(
                    child: Text(
                      'Donate',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, PageTransition(child: MessagesScreen(), type: PageTransitionType.fade));
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                    border: Border.all(color: Color(0xff5252C7)),
                  ),
                  child: Center(
                    child: Text(
                      'Message',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff5252C7)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
