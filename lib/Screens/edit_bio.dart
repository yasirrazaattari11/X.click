import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/profile_settings.dart';
import 'package:i_xlick/Widgets/custom_buttons.dart';
import 'package:i_xlick/Widgets/custom_fields.dart';

import '../Widgets/concave_container.dart';

class EditBio extends StatefulWidget {
  const EditBio({super.key});

  @override
  State<EditBio> createState() => _EditBioState();
}

class _EditBioState extends State<EditBio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/splashback.jpg'),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.fill),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 70.5,
                ),
                Container(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Image(
                            image: AssetImage('assets/image/backarrow.png'),
                          ),
                          onTap: (){
                            Navigator.pop(context);
                          },
                        ),
                        Center(
                          child: Text(
                            'Edit Profile',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Stack(
                  children: [
                    ClipPath(
                      clipper: ConcaveClipper(),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 150,
                              ),
                              Text(
                                'Name',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomTextFields(
                                  keyboardType: TextInputType.text,
                                  labelText: 'Name',
                                  obscureText: false,
                                  sizeAll: 15),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Age',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomTextFields(
                                  keyboardType: TextInputType.number,
                                  labelText: 'Age',
                                  obscureText: false,
                                  sizeAll: 15),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Email',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomTextFields(
                                  keyboardType: TextInputType.text,
                                  labelText: 'johncabaliohdk@gmail.com',
                                  obscureText: false,
                                  sizeAll: 15),
                              SizedBox(
                                height: 120,
                              ),
                              GradientButtons(
                                  text: 'SAVE CHANGES',
                                  widget: ProfileSettings()),
                              SizedBox(
                                height: 50,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 1,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Stack(children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                            child: const CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage('assets/image/john.jpg'),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 1,
                              child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Color(0xff5252C7),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Image(
                                      image: AssetImage(
                                          'assets/image/camera.png')))),
                        ]),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
