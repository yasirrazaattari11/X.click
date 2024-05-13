import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/create_new_collection.dart';
import 'package:page_transition/page_transition.dart';

import '../Widgets/category_container.dart';

class AddtoCollection extends StatelessWidget {
  const AddtoCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey,
          ),
          Column(
            children: [
              SizedBox(height: 350),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 20),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.6)),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: GestureDetector(
                          child: Image(
                            image:
                                AssetImage('assets/image/collectioncross.png'),
                          ),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Save to Collection',
                                        style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.black,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              PageTransition(
                                                  child: CreateCollection(),
                                                  type:
                                                      PageTransitionType.fade));
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 150,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                              color: Color(0xff5252C7)),
                                          child: Center(
                                            child: Text(
                                              'New Collection',
                                              style: GoogleFonts.nunito(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Your Collections',
                                    style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CategoryContainer(
                                        title: 'PORTRAIT PHOTOGRAPHY',
                                        img: 'assets/image/portraitcollage.jpg',
                                        cntheight: 160,
                                        cntwidth: 160,
                                        align: Alignment.center,
                                        padding: 0,
                                        paddingRight: 0,
                                        paddingLeft: 0,
                                      ),
                                      CategoryContainer(
                                        title: 'MUSIC VIDEO',
                                        img: 'assets/image/musiccollage.jpg',
                                        cntheight: 160,
                                        cntwidth: 160,
                                        align: Alignment.center,
                                        padding: 0,
                                        paddingRight: 0,
                                        paddingLeft: 0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CategoryContainer(
                                        title: 'SKETCHING',
                                        img:
                                            'assets/image/sketchingcollage.jpg',
                                        cntheight: 160,
                                        cntwidth: 160,
                                        align: Alignment.center,
                                        padding: 0,
                                        paddingRight: 0,
                                        paddingLeft: 0,
                                      ),
                                      CategoryContainer(
                                        title: 'MUSIC VIDEO',
                                        img: 'assets/image/musiccollage.jpg',
                                        cntheight: 160,
                                        cntwidth: 160,
                                        align: Alignment.center,
                                        padding: 0,
                                        paddingRight: 0,
                                        paddingLeft: 0,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 14,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
