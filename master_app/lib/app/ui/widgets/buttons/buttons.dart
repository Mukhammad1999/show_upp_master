import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.title,
    this.onPressed,
    this.color,
    this.titleColor,
  });

  final String title;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      disabledColor: Theme.of(context).disabledColor,
      padding: const EdgeInsets.symmetric(
        horizontal: 71,
        vertical: 23,
      ),
      color: color ?? Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTypography.buttonTextStyle.copyWith(
          color: titleColor ?? Theme.of(context).backgroundColor,
        ),
      ),
    );
  }
}
