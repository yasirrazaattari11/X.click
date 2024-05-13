import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFields extends StatelessWidget {
  AlignmentGeometry? align;
  final TextInputType keyboardType;
  final String labelText;
  final bool obscureText;
  final double sizeAll;
  Widget? widget;
  Widget? widget2;

  CustomTextFields(
      {required this.keyboardType,
        required this.labelText,
        required this.obscureText,
        required this.sizeAll,
        this.widget,
        this.widget2,
        this.align
      });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.start,
      textInputAction: TextInputAction.none,
      obscureText: obscureText,
      autofocus: false,
      style: GoogleFonts.poppins(fontSize: sizeAll),
      keyboardType: keyboardType,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(0.2),
        filled: true,
        suffixIcon: widget,
        prefixIcon: widget2,
        prefixIconColor: Colors.grey,
        label: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Align(
            alignment: align??Alignment.centerLeft,
            child: Text(
              labelText,
            ),
          ),
        ),
        labelStyle: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
