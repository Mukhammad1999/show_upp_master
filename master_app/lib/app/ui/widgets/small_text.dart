import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';

class SmallText extends StatelessWidget {
  const SmallText({super.key, required this.text, this.bold});

  final String text;
  final bool? bold;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style:
          bold == true ? AppTypography.smallBoldText : AppTypography.smallText,
    );
  }
}
