import 'package:flutter/cupertino.dart';
import 'package:master_app/app/ui/style/app_theme.dart';

abstract class AppTypography {
  /// This style we use for app bar title
  static const TextStyle appBarTitleStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14.83,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.65,
  );

  ///This style is oftenly usen with titles on the page
  static const TextStyle semiboldText = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 22.81,
    fontWeight: FontWeight.w700,
  );

  ///This style is used with buttons and small text on the pages
  static TextStyle smallText = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 13,
    color: AppTheme.lightTheme.highlightColor,
    fontWeight: FontWeight.w500,
  );

  ///This style is used with buttons and small text on the pages
  static TextStyle smallBoldText = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    color: AppTheme.lightTheme.indicatorColor,
    fontWeight: FontWeight.w600,
  );

  ///This style is used when describing on the pages
  static TextStyle smallDescription = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 15,
    color: AppTheme.lightTheme.highlightColor,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.17,
  );

  ///This style is used to indicate links or underlined text buttons
  static TextStyle smallDescriptionUnderline = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 15,
    color: AppTheme.lightTheme.highlightColor,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.17,
  );

  ///This style is oftenly usen with buttonStyle
  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14.83,
    letterSpacing: 1.65,
    fontWeight: FontWeight.w500,
  );

  //This is style for hints
  static const TextStyle hintStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle numberDigits = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 34,
    fontWeight: FontWeight.w700,
  );
}
