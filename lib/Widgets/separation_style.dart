import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SeparationStyle extends StatelessWidget {
  final String text;
  SeparationStyle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.fiber_manual_record,
          color: Color(0xff5252C7),
          size: 12,
        ),
        SizedBox(
          width: 40,
        ),
        Text(text,
            style: GoogleFonts.nunito(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            )),
        SizedBox(
          width: 40,
        ),
        Icon(
          Icons.fiber_manual_record,
          color: Color(0xff5252C7),
          size: 12,
        ),
      ],
    );
  }
}
