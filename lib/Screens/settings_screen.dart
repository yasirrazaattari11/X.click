import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Widgets/setting_box.dart';

import '../Widgets/category_container.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
              SizedBox(height: 389),
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
                          onTap: () {
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    'Activity Feed',
                                    style: GoogleFonts.nunito(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SettingsType(text: 'Collections'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SettingsType(text: 'Comment Likes'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SettingsType(text: 'Followers'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SettingsType(text: 'Likes'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SettingsType(text: 'Donate'),
                                  SizedBox(height: 70,)
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
