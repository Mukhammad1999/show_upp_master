import 'package:flutter/material.dart';

import '../../index/index.dart';

///widget to display curved appbar defined by formula side1Toside2, where side1
/// is the biggest part of [Curvature].
class CurvedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CurvedAppBar({
    super.key,
    this.title,
    required this.curvature,
    this.backgroundColor,
  });
  final String? title;
  final Curvature curvature;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _getCurvatureByEnum(curvature),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
        height: 175,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(175);
}

CustomClipper<Path> _getCurvatureByEnum(Curvature curvature) {
  switch (curvature) {
    case Curvature.rightToLeft:
      return RightToLeftCurvature();
    case Curvature.leftToRight:
      return LeftToRightCurvature();
    case Curvature.lined:
      return LinedCurvature();
  }
}
