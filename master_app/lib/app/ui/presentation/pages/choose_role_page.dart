import 'package:flutter/material.dart';

class ChooseRolePage extends StatelessWidget {
  const ChooseRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CurvedAppBar(),
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
      bottom: const CurvedBottom(),
      title: title != null ? Text(title!) : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class CurvedBottom extends StatelessWidget implements PreferredSizeWidget {
  const CurvedBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Size get preferredSize => const Size.fromHeight(30);
}

class CurvatureClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

enum Curvature { lined, leftToRight, rightToLeft }
