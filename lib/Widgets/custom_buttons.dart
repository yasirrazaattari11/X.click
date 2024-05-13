import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
class GradientButtons extends StatelessWidget {
  final String text;
  final Widget widget;

  GradientButtons({required this.text,required this.widget});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),

            gradient: LinearGradient(colors: [
              Color(0xff5252C7),
              Colors.purple.withOpacity(0.4)
            ])
        ),
        child: Center(
          child: Text(
              text,
              style: GoogleFonts.nunito(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )
          ),
        ),
      ),
      onTap: (){
        Navigator.push(context, PageTransition(child: widget, type: PageTransitionType.fade));
      },
    );
  }
}
