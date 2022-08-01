import 'package:flutter/material.dart';

///Gives the curvature, where the right side is bigger to left side.
class RightToLeftCurvature extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final controlPoint1 = Offset(size.width - size.width / 5, size.height);
    final controlPoint2 = Offset(size.width / 1.5, size.height - 120);
    final endPoint = Offset(0, size.height - 50);
    //fromRightToLeft
    return Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..cubicTo(
        controlPoint1.dx,
        controlPoint1.dy,
        controlPoint2.dx,
        controlPoint2.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

///Draws Left To Right Curvature, where left side is bigger than right.
class LeftToRightCurvature extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final controlPoint1 = Offset(size.width - size.width / 5, size.height);
    final controlPoint2 = Offset(size.width / 1.5, size.height - 120);
    final endPoint = Offset(0, size.height - 50);
    //fromRightToLeft
    return Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..cubicTo(
        controlPoint1.dx,
        controlPoint1.dy,
        controlPoint2.dx,
        controlPoint2.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

///Draws LinedCurvature, where
class LinedCurvature extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final controlPoint1 = Offset(size.width - size.width / 5, size.height - 70);
    final controlPoint2 = Offset(size.width / 5, size.height - 100);
    final endPoint = Offset(0, size.height);
    //fromRightToLeft
    return Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height - 100)
      ..cubicTo(
        controlPoint1.dx,
        controlPoint1.dy,
        controlPoint2.dx,
        controlPoint2.dy,
        endPoint.dx,
        endPoint.dy,
      )
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

// enum to define which curvature to use
enum Curvature { lined, leftToRight, rightToLeft }
