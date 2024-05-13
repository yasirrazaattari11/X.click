import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/boarding_screen.dart';
import 'package:i_xlick/Widgets/splash_containers.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          PageTransition(child: BoardingScreen(), type: PageTransitionType.fade));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/splashback.jpg'),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.contain)),
          ),
          Center(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    'i.xlick',
                    style: GoogleFonts.nunito(
                        fontSize: 38,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 150,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 45),
                        child: SplashContainers(
                          img: 'assets/image/splashcontainer.jpg',
                          boxshadowclr: Colors.purpleAccent,
                          dx: 10,
                          dy: -10,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          SplashContainers(
                            img: 'assets/image/splashcontainer2.jpg',
                            boxshadowclr: Colors.transparent,
                            dx: 0,
                            dy: 0,
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          SplashContainers(
                            img: 'assets/image/splashcontainer3.jpg',
                            boxshadowclr: Colors.transparent,
                            dx: 0,
                            dy: 0,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 45),
                        child: SplashContainers(
                          img: 'assets/image/splashcontainer4.jpg',
                          boxshadowclr: Colors.purpleAccent,
                          dx: -10,
                          dy: 10,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
