import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/verification_screen.dart';
import 'package:neon/neon.dart';

import '../Widgets/custom_buttons.dart';
import '../Widgets/custom_fields.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/authback.jpg'),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill)),
          ),
          SingleChildScrollView(
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
                  height: 30,
                ),
                Neon(
                  text: 'WELCOME',
                  color: Colors.grey,
                  font: NeonFont.TextMeOne,
                  fontSize: 35,
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        CustomTextFields(
                            keyboardType: TextInputType.emailAddress,
                            labelText: 'Email',
                            obscureText: false,
                            sizeAll: 15),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFields(
                            keyboardType: TextInputType.phone,
                            labelText: 'Phone',
                            obscureText: false,
                            sizeAll: 15),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextFields(
                            keyboardType: TextInputType.text,
                            labelText: 'Password',
                            obscureText: true,
                            sizeAll: 15,
                            widget: Container(
                              child: Image(image: AssetImage('assets/image/visibility.png')),
                            )
                        ),
                        SizedBox(height: 40,),
                        GradientButtons(text: 'SIGN UP',widget: VerificationScreen(),),
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have account?",style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.black
                            ),),
                            SizedBox(width: 5,),
                            GestureDetector(
                              child: Text("SIGN IN",style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Color(0xff5252C7),
                              ),),
                              onTap: (){
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 162,)

                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
