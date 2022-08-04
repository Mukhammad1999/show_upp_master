import 'package:flutter/material.dart';

///Gives the curvature, where the right side is bigger to left side.
class RightToLeftCurvature extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final controlPoint1 = Offset(rect.width - rect.width / 5, rect.height);
    final controlPoint2 = Offset(rect.width / 1.5, rect.height - 120);
    final endPoint = Offset(0, rect.height - 50);
    //fromRightToLeft
    return Path()
      ..lineTo(rect.width, 0)
      ..lineTo(rect.width, rect.height)
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
}

///Draws Left To Right Curvature, where left side is bigger than right.
class LeftToRightCurvature extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final controlPoint1 = Offset(rect.width - rect.width / 5, rect.height);
    final controlPoint2 = Offset(rect.width / 1.5, rect.height - 120);
    final endPoint = Offset(0, rect.height - 50);
    //fromRightToLeft
    return Path()
      ..lineTo(rect.width, 0)
      ..lineTo(rect.width, rect.height)
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
}

///Draws LinedCurvature, where
class LinedCurvature extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final controlPoint1 = Offset(rect.width - rect.width / 5, rect.height - 20);
    final controlPoint2 = Offset(rect.width / 5, rect.height - 100);
    final endPoint = Offset(0, rect.height);
    //fromRightToLeft
    return Path()
      ..lineTo(rect.width, 0)
      ..lineTo(rect.width, rect.height - 100)
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
}

// enum to define which curvature to use
enum Curvature { lined, leftToRight, rightToLeft }
