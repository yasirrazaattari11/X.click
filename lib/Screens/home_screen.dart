import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/message_screen.dart';
import 'package:i_xlick/Widgets/app_bar.dart';
import 'package:i_xlick/Widgets/following_tab.dart';
import 'package:i_xlick/Widgets/popular_tab.dart';
import 'package:i_xlick/Widgets/trending_tab.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected_index = 0;
  Widget buildSelectedContent() {
    if (selected_index == 0) {
      return PopularTab();
    } else if (selected_index == 1) {
      return Trendingtab();
    } else if (selected_index == 2) {
      return FollowingTab();
    }

    return SizedBox.shrink(); // Return an empty widget by default
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CustomAppbar(widget: GestureDetector(
                      onTap: (){
                        Navigator.push(context, PageTransition(child: MessagesScreen(), type: PageTransitionType.fade));
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey.withOpacity(0.2)
                        ),
                        child: Image.asset('assets/image/message.png'),
                      ),
                    ),padding: 10,),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selected_index = 0;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 100,
                            color: selected_index == 0
                                ? Color(0xffE3E4FC)
                                : Colors.transparent,
                            child: Center(
                              child: Text(
                                'Popular',
                                style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    fontWeight: selected_index == 0
                                        ? FontWeight.w700
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
                            width: 100,
                            color: selected_index == 1
                                ? Color(0xffE3E4FC)
                                : Colors.transparent,
                            child: Center(
                              child: Text(
                                'Trending',
                                style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    fontWeight: selected_index == 1
                                        ? FontWeight.w700
                                        : FontWeight.w400,
                                    color: selected_index == 1
                                        ? const Color(0xff5252C7)
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selected_index = 2;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 100,
                              color: selected_index == 2
                                  ? Color(0xffE3E4FC)
                                  : Colors.transparent,
                              child: Center(
                                child: Text(
                                  'Following',
                                  style: GoogleFonts.nunito(
                                      fontSize: 16,
                                      fontWeight: selected_index == 2
                                          ? FontWeight.w700
                                          : FontWeight.w400,
                                      color: selected_index == 2
                                          ? Color(0xff5252C7)
                                          : Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        const  SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: buildSelectedContent()
              ),
            ),
          ),
        ],
      ),
    );
  }
}
