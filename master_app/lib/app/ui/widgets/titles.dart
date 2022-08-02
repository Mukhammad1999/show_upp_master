import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';

class SemiBoldTitle extends StatelessWidget {
  const SemiBoldTitle({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: AppTypography.semiboldText,
      maxLines: 1,
    );
  }
}
