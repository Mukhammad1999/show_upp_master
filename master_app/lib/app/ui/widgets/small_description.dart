import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';

class SmallDescription extends StatelessWidget {
  const SmallDescription(
      {super.key, required this.text, this.underline, this.maxLines});

  final String text;
  final bool? underline;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      maxLines: maxLines ?? 1,
      style: underline == true
          ? AppTypography.smallDescriptionUnderline
          : AppTypography.smallDescription,
    );
  }
}
