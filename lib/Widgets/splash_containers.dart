import 'package:flutter/material.dart';
class SplashContainers extends StatelessWidget {
  final String img;
  final Color boxshadowclr;
  final double dx,dy;
  SplashContainers({required this.img,required this.boxshadowclr,required this.dx,required this.dy});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      transform: Matrix4.rotationZ(-3.14159 / 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
            image: AssetImage(img),
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill),
        boxShadow: [
          BoxShadow(
          color: boxshadowclr,
          offset: Offset(dx, dy),
          blurRadius: 6,
          spreadRadius: 0
        )
        ]
      ),
    );
  }
}
