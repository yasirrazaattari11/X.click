import 'package:flutter/material.dart';
class ConcaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, size.height) // Start from bottom-left
      ..lineTo(size.width, size.height) // Bottom-right
      ..lineTo(size.width, 0) // Top-right
      ..quadraticBezierTo(size.width / 2, size.height * 0.2, 0, 0); // Concave curve
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
