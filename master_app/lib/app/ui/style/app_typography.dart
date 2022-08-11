import 'package:flutter/cupertino.dart';

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

  ///This style is oftenly usen with buttonStyle
  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14.83,
    letterSpacing: 1.65,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle hintStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
