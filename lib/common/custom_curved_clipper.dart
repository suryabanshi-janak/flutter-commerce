import 'package:flutter/material.dart';

class CustomCurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);

    final firstCurve = Offset(0, size.height - 20);
    final firstCurveEnd = Offset(30, size.height - 20);
    path.quadraticBezierTo(
        firstCurve.dx, firstCurve.dy, firstCurveEnd.dx, firstCurveEnd.dy);

    final secondCurve = Offset(0, size.height - 20);
    final secondCurveEnd = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
        secondCurve.dx, secondCurve.dy, secondCurveEnd.dx, secondCurveEnd.dy);

    final thirdCurve = Offset(size.width, size.height - 20);
    final thirdCurveEnd = Offset(size.width, size.height);
    path.quadraticBezierTo(
        thirdCurve.dx, thirdCurve.dy, thirdCurveEnd.dx, thirdCurveEnd.dy);

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
