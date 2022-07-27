import 'package:flutter/material.dart';

class ChooseRolePage extends StatelessWidget {
  const ChooseRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:CurvedAppBar(),
    );
  }
}

class CurvedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CurvedAppBar({
    Key? key, this.backgroundColor, this.curvature, this.title,
  }) : super(key: key);
  final Color? backgroundColor;
  final Curvature? curvature;
  final String? title;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title != null  ? Text(title!) : null,
      bottom: const CurvedBottom(),
    );

  }
  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class CurvedBottom extends StatelessWidget implements PreferredSizeWidget {
  const CurvedBottom({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(30);
}







enum Curvature{
  LEFTtoRIGHT,
  RIGHTtoLEFT,
  WITHLINE
}


