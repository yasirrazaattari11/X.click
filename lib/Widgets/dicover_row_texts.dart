import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class RowTexts extends StatelessWidget {
  final String title;
  final Widget widget;
  RowTexts({required this.title, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.nunito(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                PageTransition(child: widget, type: PageTransitionType.fade));
          },
          child: Text(
            'View more',
            style: GoogleFonts.nunito(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Color(0xff5252C7)),
          ),
        ),
      ],
    );
  }
}
