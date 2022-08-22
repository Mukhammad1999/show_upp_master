import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:master_app/app/ui/images/images.dart';

class ShowUppLogo extends StatelessWidget {
  const ShowUppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SvgPicture.asset(
        SvgImages.logo,
      ),
    );
  }
}
