import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartoonDisplayer extends StatelessWidget {
  const CartoonDisplayer({super.key, required this.assetName, this.assetColor});
  final String assetName;
  final Color? assetColor;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      height: 256,
    );
  }
}
