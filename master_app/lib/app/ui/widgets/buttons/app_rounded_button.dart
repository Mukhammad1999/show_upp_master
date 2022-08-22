import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';

class RoundedTextButton extends StatelessWidget {
  const RoundedTextButton({
    super.key,
    this.onPressed,
    required this.title,
    this.buttonColor,
    this.textColor,
  });
  final VoidCallback? onPressed;
  final String title;
  final Color? buttonColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          57,
        ),
      ),
      disabledColor: Theme.of(context).disabledColor,
      color: buttonColor ?? Theme.of(context).primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 23),
      child: Text(
        title,
        style: AppTypography.buttonTextStyle.copyWith(
          color: Theme.of(context).backgroundColor,
        ),
      ),
    );
  }
}
