import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/collections_data.dart';
import 'package:i_xlick/Widgets/category_container.dart';
import 'package:page_transition/page_transition.dart';

class ProfileCollectionScreen extends StatelessWidget {
  const ProfileCollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CategoryContainer(
                            title: 'PORTRAIT PHOTOGRAPHY',
                            img: 'assets/image/portraitcollage.jpg',
                            cntheight: 150,
                            cntwidth: 150,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '25 Shots',
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CategoryContainer(
                            title: 'CARS',
                            img: 'assets/image/carscollage.jpg',
                            cntheight: 150,
                            cntwidth: 150,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '25 Shots',
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CategoryContainer(
                            title: 'SHOWS',
                            img: 'assets/image/showscollage.jpg',
                            cntheight: 150,
                            cntwidth: 150,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '25 Shots',
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          child: CategoryContainer(
                              title: 'MUSIC COLLAGE',
                              img: 'assets/image/musiccollage.jpg',
                              cntheight: 150,
                              cntwidth: 150,
                              align: Alignment.center,
                              padding: 0,
                              paddingLeft: 0,
                              paddingRight: 0),
                          onTap: (){
                            Navigator.push(context, PageTransition(child: CollectionData(), type: PageTransitionType.fade));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '25 Shots',
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CategoryContainer(
                            title: 'SKETCHING',
                            img: 'assets/image/sketchingcollage.jpg',
                            cntheight: 150,
                            cntwidth: 150,
                            align: Alignment.center,
                            padding: 0,
                            paddingLeft: 0,
                            paddingRight: 0),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '25 Shots',
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(height: 200,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
