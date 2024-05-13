import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/edit_bio.dart';
import 'package:i_xlick/Widgets/settings_container.dart';
import 'package:page_transition/page_transition.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.withOpacity(0.4)),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage('assets/image/john.jpg'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'John',
                                    style: GoogleFonts.nunito(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 190,
                                  ),
                                  GestureDetector(
                                    child: Image(
                                      image: AssetImage(
                                          'assets/image/wditsquare.png'),
                                      color: Colors.white,
                                    ),
                                    onTap: (){
                                      Navigator.push(context, PageTransition(child: EditBio(), type: PageTransitionType.fade));
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                'johncabaliohdk@gmail.com',
                                style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  SettingsContainer(settingtype: 'Email'),
                  SizedBox(height: 20,),
                  SettingsContainer(settingtype: 'Instagram'),
                  SizedBox(height: 20,),
                  SettingsContainer(settingtype: 'Twitter'),
                  SizedBox(height: 20,),
                  SettingsContainer(settingtype: 'Website'),
                  SizedBox(height: 20,),
                  SettingsContainer(settingtype: 'Paypal'),
                  SizedBox(height: 20,),
                  SettingsContainer(settingtype: 'Change Password'),
                  SizedBox(height: 20,),
                  SettingsContainer(settingtype: 'About i.xlick'),
                  SizedBox(height: 20,),
                  SettingsContainer(settingtype: 'Terms & Privacy'),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 60,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(image: AssetImage('assets/image/logouticon.png')),
                            Text(
                              'Log out',
                              style: GoogleFonts.nunito(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
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
