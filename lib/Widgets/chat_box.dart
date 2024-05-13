import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatBox extends StatelessWidget {
  final String message;
  final double height;
  final double width;
  final double topleft;
  final double topright;
  final double bottomright;
  final double bottomleft;
  final String time;
  Widget? widget;
  ChatBox(
      {required this.message,
      required this.height,
      required this.width,
      required this.topleft,
      required this.topright,
      required this.bottomleft,
      required this.bottomright,
        required this.time,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          widget??SizedBox.shrink(),
          SizedBox(
            width: 5,
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topleft),
                  topRight: Radius.circular(topright),
                  bottomLeft: Radius.circular(bottomleft),
                  bottomRight: Radius.circular(bottomright)),
              color: Colors.grey.withOpacity(0.2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      message,
                      style: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        time,
                        style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
