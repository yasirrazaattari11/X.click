import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryContainer extends StatelessWidget {
  final String title;
  final Alignment align;
  final String img;
  final double cntheight;
  final double? padding;
  final double? paddingRight;
  final double? paddingLeft;
  final double cntwidth;
  CategoryContainer(
      {required this.title,
      required this.img,
      required this.cntheight,
      required this.cntwidth,
      required this.align,
      required this.padding,
      required this.paddingLeft,
      required this.paddingRight});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: cntheight,
        width: cntwidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(img),
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover)),
        child: Container(
          height: cntheight,
          width: cntwidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage('assets/image/categorycontainer1.png'),
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover)),
          child: Align(
            alignment: align,
            child: Padding(
              padding: EdgeInsets.only(bottom: padding!,left: paddingLeft!,right: paddingRight!),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
            ),
          ),
        ));
  }
}
