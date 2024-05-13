import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_xlick/Screens/category_selection.dart';

import '../Widgets/custom_buttons.dart';
import '../Widgets/custom_fields.dart';
class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
                  height: 100,
                ),
                Text(
                  'i.xlick',
                  style: GoogleFonts.nunito(
                      fontSize: 38,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
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
                          height: 30,
                        ),
                        Text('SET NEW PASSWORD',style: GoogleFonts.nunito(
                          fontSize: 16,
                          color: Color(0xff5252C7),
                          fontWeight: FontWeight.w700,
                        ),),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xffE3E4FC),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 50),
                              child: Text(
                                'Type your new password',
                                style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        CustomTextFields(
                          keyboardType: TextInputType.text,
                          labelText: 'Password',
                          obscureText: false,
                          sizeAll: 15,
                            widget: Container(
                              child: Image(image: AssetImage('assets/image/visibility.png')),
                            )
                        ),
                        SizedBox(height: 20,),
                        CustomTextFields(
                            keyboardType: TextInputType.text,
                            labelText: 'Confirm Password',
                            obscureText: false,
                            sizeAll: 15,
                            widget: Container(
                              child: Image(image: AssetImage('assets/image/visibility.png')),
                            )
                        ),

                        SizedBox(height: 40,),
                        GradientButtons(text: 'UPDATE',widget: CategoryScreen(),),
                        SizedBox(height: 50,),
                        Image(image: AssetImage('assets/image/rhombus.png')),
                        SizedBox(height: 70,)


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
