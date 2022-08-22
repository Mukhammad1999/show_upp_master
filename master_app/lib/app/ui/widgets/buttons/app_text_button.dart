import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:master_app/app/ui/style/app_typography.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.title,
    this.onPressed,
    this.color,
    this.titleColor,
    this.isLoading,
  });
  final String title;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? titleColor;
  final bool? isLoading;

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
      child: isLoading != null
          ? isLoading!
              ? Center(
                  child: SpinKitFadingCircle(
                    color: Theme.of(context).backgroundColor,
                    size: 18,
                  ),
                )
              : Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.buttonTextStyle.copyWith(
                    color: titleColor ?? Theme.of(context).backgroundColor,
                  ),
                )
          : Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.buttonTextStyle.copyWith(
                color: titleColor ?? Theme.of(context).backgroundColor,
              ),
            ),
    );
  }
}
