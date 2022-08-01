import 'package:flutter/material.dart';

class ChooseRolePage extends StatelessWidget {
  const ChooseRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CurvedAppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}

class CurvedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CurvedAppBar({
    super.key,
    this.title,
    this.curvature,
    this.backgroundColor,
  });
  final String? title;
  final Curvature? curvature;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      bottom: CurvedBottom(
        backgroundColor: backgroundColor,
      ),
      title: title != null ? Text(title!) : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}

class CurvedBottom extends StatelessWidget implements PreferredSizeWidget {
  const CurvedBottom({
    super.key,
    this.backgroundColor,
  });
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvatureClipper(),
      child: Container(
        color: backgroundColor,
        height: 60,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class CurvatureClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final controlPoint1 = Offset(size.width - size.width / 5, size.height);
    final controlPoint2 = Offset(size.width / 5, size.height - 50);
    final endPoint = Offset(0, size.height);
    //fromRightToLeft
    return Path()
      ..lineTo(size.width, 0)
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

enum Curvature { lined, leftToRight, rightToLeft }
