import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/forgot_password.dart';
import 'package:i_xlick/Screens/home_screen.dart';
import 'package:i_xlick/Screens/my_navigation_bar.dart';
import 'package:i_xlick/Screens/signup_screen.dart';
import 'package:i_xlick/Widgets/custom_buttons.dart';
import 'package:i_xlick/Widgets/custom_fields.dart';
import 'package:neon/neon.dart';
import 'package:page_transition/page_transition.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

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
                          keyboardType: TextInputType.text,
                          labelText: 'Password',
                          obscureText: true,
                          sizeAll: 15,
                          widget: Container(
                            child: Image(image: AssetImage('assets/image/visibility.png')),
                          )
                        ),
                        SizedBox(height: 40,),
                        GestureDetector(
                          child: Text('FORGOT PASSWORD',style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: Color(0xff5252C7),
                            fontWeight: FontWeight.w300,
                            letterSpacing: 1
                          ),),
                          onTap: (){
                            Navigator.push(context, PageTransition(child: ForgotPassword(), type: PageTransitionType.fade));
                          },
                        ),
                        SizedBox(height: 40,),
                        GradientButtons(text: 'LOG IN',widget: MyNavigationBar(),),
                        SizedBox(height: 40,),
                        Text('OR LOGIN BY',style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          letterSpacing: 1
                        ),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                color: Color(0xffE3E4FC),
                              ),
                              child: Image(image: AssetImage('assets/image/googleicon.png')),
                            ),
                            SizedBox(width: 30,),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                color: Color(0xffE3E4FC),
                              ),
                              child: Image(image: AssetImage('assets/image/fbicon.png')),
                            ),
                          ],
                        ),
                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have account?",style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black
                            ),),
                            SizedBox(width: 5,),
                            GestureDetector(
                              child: Text("SIGN UP",style: GoogleFonts.nunito(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xff5252C7),
                              ),),
                              onTap: (){
                                Navigator.push(context, PageTransition(child: SignupScreen(), type: PageTransitionType.fade));
                              },
                            ),

                          ],
                        ),
                        SizedBox(height: 38,)

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
