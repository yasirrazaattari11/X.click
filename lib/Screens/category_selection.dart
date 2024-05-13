import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/home_screen.dart';
import 'package:i_xlick/Screens/my_navigation_bar.dart';
import 'package:i_xlick/Screens/signup_screen.dart';
import 'package:i_xlick/Widgets/category_container.dart';
import 'package:i_xlick/Widgets/custom_buttons.dart';

import '../Widgets/concave_container.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
                    fit: BoxFit.fill)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                'i.xlick',
                style: GoogleFonts.nunito(
                    fontSize: 38,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              ClipPath(
                clipper: ConcaveClipper(),
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      Text(
                        'Who are you?',
                        style: GoogleFonts.nunito(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20, bottom: 10),
                                child: CategoryContainer(
                                  title: 'Photographer',
                                  img: 'assets/image/categoryconatner1.png',
                                  cntheight: 180,
                                  cntwidth: 150,
                                  align: Alignment.bottomCenter,
                                  padding:15,
                                  paddingRight: 0,
                                  paddingLeft: 0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 20, bottom: 10),
                                child: CategoryContainer(
                                  title: 'Video Creator',
                                  img: 'assets/image/categorycontainer2.png',
                                  cntheight: 180,
                                  cntwidth: 150,
                                  align: Alignment.bottomCenter,
                                  padding: 15,
                                  paddingRight: 0,
                                  paddingLeft: 0,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10, bottom: 20),
                                child: CategoryContainer(
                                    title: 'Illustrator',
                                    img: 'assets/image/categoryconatiner3.png',
                                    cntheight: 180,
                                    cntwidth: 150,
                                    align: Alignment.bottomCenter,
                                  padding: 15,
                                  paddingRight: 0,
                                  paddingLeft: 0,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 20, top: 10, bottom: 20),
                                child: CategoryContainer(
                                  title: 'Designer',
                                  img: 'assets/image/categorycontainer4.png',
                                  cntheight: 180,
                                  cntwidth: 150,
                                  align: Alignment.bottomCenter,
                                  padding: 15,
                                  paddingRight: 0,
                                  paddingLeft: 0,

                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'SHARE - INSPIRE - CONNECT',
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color(0xff5252C7)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GradientButtons(
                            text: 'EXPLORE NOW', widget: MyNavigationBar()),
                      ),
                      SizedBox(
                        height: 31.5,
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
