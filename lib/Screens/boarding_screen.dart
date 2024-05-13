import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/signin_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../Widgets/splash_containers.dart';
class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

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
                    height: 70,
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
                      SizedBox(height: 20,),
                      Text('SHARE - INSPIRE - CONNECT',style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                      ),),
                      SizedBox(height: 50,),
                      GestureDetector(
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey.withOpacity(0.6),
                          ),
                          child: Center(child: Text('Get Started',style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          ),),),
                        ),
                        onTap: (){
                          Navigator.pushReplacement(context, PageTransition(child: SigninScreen(), type: PageTransitionType.fade));
                        },
                      )
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
