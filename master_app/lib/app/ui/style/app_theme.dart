import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_colors.dart';

abstract class AppTheme {
  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColorsLight.primaryColor,
        fontFamily: 'Montserrat',
        backgroundColor: AppColorsLight.backGroundColor,
        disabledColor: AppColorsLight.disabledColor,
        hintColor: AppColorsLight.hintColor,
        hoverColor: AppColorsLight.lightGreyColor,
        indicatorColor: AppColorsLight.indicatorColor,
        highlightColor: AppColorsLight.descriptionColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
        ),
      );
}
