import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
class SettingsType extends StatefulWidget {
  final String text;
  SettingsType({required this.text});

  @override
  State<SettingsType> createState() => _SettingsTypeState();
}

class _SettingsTypeState extends State<SettingsType> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: status ? Colors.black:Colors.grey),
            ),
            Container(
              child: FlutterSwitch(
                value: status,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
                width: 60,
                height: 35,
                valueFontSize: 25,
                toggleSize: 20,
                borderRadius: 30,
                padding: 8,
                activeColor: Color(0xff5252C7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
