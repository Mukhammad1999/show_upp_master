import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/app/ui/widgets/small_description.dart';

class AppWrappedTextButton extends StatelessWidget {
  const AppWrappedTextButton(
      {super.key,
      required this.title,
      this.onPressed,
      this.color,
      this.titleColor,
      this.isLoading,
      this.topText,
      this.bottomText});

  final String title;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? titleColor;
  final bool? isLoading;
  final String? topText;
  final String? bottomText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SmallDescription(
          text: topText ?? '',
          maxLines: 2,
        ),
        const SizedBox(
          height: 22,
        ),
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          disabledColor: Theme.of(context).disabledColor,
          padding: const EdgeInsets.symmetric(
            horizontal: 71,
            vertical: 20,
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
        ),
        const SizedBox(
          height: 22,
        ),
        SmallDescription(underline: true, text: bottomText ?? ''),
      ],
    );
  }
}
