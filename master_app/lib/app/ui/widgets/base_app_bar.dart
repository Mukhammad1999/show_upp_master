import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:master_app/app/ui/images/images.dart';
import 'package:master_app/app/ui/style/app_theme.dart';
import 'package:master_app/app/ui/style/app_typography.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BaseAppBar(
      {super.key,
      this.title,
      this.backgroundColor,
      this.trailingTextButton,
      this.onTrailingButton});

  final String? title;
  final Color? backgroundColor;
  final String? trailingTextButton;
  final VoidCallback? onTrailingButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          SvgImages.arrowLeft,
          color: backgroundColor == null
              ? AppTheme.lightTheme.primaryColor
              : AppTheme.lightTheme.highlightColor,
        ),
        onPressed: () => Modular.to.pop(),
      ),
      elevation: 0,
      backgroundColor: backgroundColor ?? AppTheme.lightTheme.backgroundColor,
      title: title != null
          ? Text(
              title!,
              style: AppTypography.appBarTitleStyle
                  .copyWith(color: Theme.of(context).backgroundColor),
            )
          : null,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: TextButton(
              onPressed: onTrailingButton,
              style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent)),
              child: Text(
                trailingTextButton ?? '',
                style: AppTypography.appBarTitleStyle
                    .copyWith(color: AppTheme.lightTheme.primaryColor),
              )),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(52);
}
