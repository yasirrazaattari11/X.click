import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:i_xlick/Screens/activity_screen.dart';
import 'package:i_xlick/Screens/discover_screen.dart';
import 'package:i_xlick/Screens/home_screen.dart';
import 'package:i_xlick/Screens/user_profile_screen.dart';
import 'package:i_xlick/Widgets/custom_icons.dart';
class MyNavigationBar extends StatefulWidget {


  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  
  List<IconData>iconList = [
    CustomIcons.home,
    CustomIcons.category,
    CustomIcons.notification,
    CustomIcons.profile
  ];
  int page = 0;
  int pageview = 0;
  PageController pageController = PageController(initialPage: 0);
  Widget pageViewSection() {
    return PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            page = value;
          });
        },
        children: [
          HomeScreen(),
         DiscoverScreen(),
          ActivityScreen(),
          UserProfile(),
        ]
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pageViewSection(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff5252C7),
        elevation: 10,
        onPressed: (){

        },
        child: Image(image: AssetImage('assets/image/plussquare.png')),
      ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          iconSize: 30,
          activeIndex: page,
          inactiveColor: Colors.black,
          activeColor: Color(0xff5252C7),
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 35,
          rightCornerRadius: 35,
          gapLocation: GapLocation.none,
          onTap: (p0) {
            setState(() {
              pageview = p0;
              pageController.animateToPage(p0,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            });
          },
        )
    );
  }
}
