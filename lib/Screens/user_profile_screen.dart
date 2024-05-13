import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/profile_settings.dart';
import 'package:i_xlick/Widgets/collections_screen.dart';
import 'package:i_xlick/Widgets/shots_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../Widgets/concave_container.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
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
                            Text(
                              '',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800),
                            ),
                            Center(
                              child: Text(
                                '@brunopham',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            GestureDetector(
                              child: const Image(
                                image: AssetImage('assets/image/Setting.png'),
                                color: Colors.white,
                              ),
                              onTap: (){
                                Navigator.push(context, PageTransition(child: ProfileSettings(), type: PageTransitionType.fade));
                              },
                            )
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
                                  height: 45.31,
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
                                  height: 22.673,
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
                                  height: 20,
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
                                        color: selected_index == 0? Color(0xffE3E4FC):Colors.transparent,
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
                                        color: selected_index == 1?Color(0xffE3E4FC) :Colors.transparent,
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
                                                    : Colors.grey
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                )
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
                                backgroundImage:
                                    AssetImage('assets/image/john.jpg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(flex: 1, child: buildSelectedContent())
        ],
      ),
    );
  }
}
