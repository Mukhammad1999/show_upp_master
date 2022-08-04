import 'package:flutter/material.dart';
import 'package:master_app/app/index/index.dart';
import 'package:master_app/app/ui/style/app_typography.dart';

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
    return AppBar(
      elevation: 0,
      shape: _getCurvatureByEnum(curvature),
      backgroundColor: backgroundColor,
      title: title != null
          ? Text(
              title!,
              style: AppTypography.appBarTitleStyle
                  .copyWith(color: Theme.of(context).backgroundColor),
            )
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}

//returns a curvature configuration for appBar by enum value
ShapeBorder _getCurvatureByEnum(Curvature curvature) {
  switch (curvature) {
    case Curvature.rightToLeft:
      return RightToLeftCurvature();
    case Curvature.leftToRight:
      return LeftToRightCurvature();
    case Curvature.lined:
      return LinedCurvature();
  }
}
