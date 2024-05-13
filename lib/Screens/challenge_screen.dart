import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/home_screen.dart';
import 'package:i_xlick/Screens/my_navigation_bar.dart';
import 'package:i_xlick/Widgets/challenge_info.dart';
import 'package:i_xlick/Widgets/custom_buttons.dart';
import 'package:i_xlick/Widgets/separation_style.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({super.key});

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 4,
          child: Container(
              child: Stack(
            children: [
              Container(
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/image/thanpost.png'),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image(
                            image: AssetImage('assets/image/backarrow.png')),
                      ),
                    ),
                    SizedBox(
                      height: 155,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.white),
                      child: Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 60),
                                child: Text(
                                  'STREET NIGHT PORTRAIT',
                                  style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Text(
                                  'BLACK & WHITE PHOTOGRAPHY',
                                  style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
        SizedBox(
          height: 30,
        ),
        Expanded(
          flex: 7,
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ChallengeInfo(maintext: 'Deadline', subText: '30 days left'),
                  SizedBox(
                    height: 20,
                  ),
                  ChallengeInfo(maintext: 'Prize', subText: '\$ 100.00'),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        Text('READY TO WIN THIS ',
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            )),
                        Text('CHALLENGE',
                            style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff5252C7),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GradientButtons(
                        text: 'SUBMIT YOUR SHOT', widget: MyNavigationBar()),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      children: [
                        Text(
                          '350 ',
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff5252C7)),
                        ),
                        Text(
                          'people have joined this challenge',
                          style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      height: 2,
                      thickness: 1,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SeparationStyle(text: 'Challenge'),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "In this captivating black and white street night portrait, "
                      "the city's luminous lights serve as both a backdrop and a source of dramatic contrast. "
                      "The subject, shrouded in shadow, emerges from the darkness,"
                      " their features delicately illuminated by the soft, "
                      "ambient glow of urban illumination. The interplay of light and shadow creates a striking chiaroscuro effect, "
                      "accentuating the subject's enigmatic presence against the bustling cityscape.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "As the city's lights paint a mesmerizing mosaic of shapes and reflections in the background, the subject's contemplative gaze captures a mood that is both introspective and mysterious. The choice of black and white photography accentuates the timeless quality of the scene, allowing the viewer to focus on the raw emotions conveyed by the subject's expression and the intricate details of the city's architecture. This portrait transcends the boundaries of time and place, inviting viewers to immerse themselves in the aesthetic allure of urban nightlife.",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SeparationStyle(text: 'Inspiration'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right: 10),
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Image(
                            image: AssetImage('assets/image/model1.jpg'),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: Container(
                          height: 150,
                          width: 150,
                          child: Image(
                            image: AssetImage('assets/image/model2.jpg'),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SeparationStyle(text: 'Trending'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35, right: 10),
                        child: Container(
                          height: 190,
                          width: 150,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                              child: Image(
                            image: AssetImage('assets/image/elizapost.jpg'),
                            filterQuality: FilterQuality.high,
                            fit: BoxFit.fill,
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20),
                        child: Container(
                          height: 190,
                          width: 150,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: Image(
                              image: AssetImage('assets/image/eliaspost.jpg'),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
