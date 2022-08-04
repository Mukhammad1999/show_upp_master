import 'package:flutter/cupertino.dart';

abstract class AppTypography {
  /// This style we use for app bar title
  static const TextStyle appBarTitleStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14.83,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.65,
  );

  static const TextStyle semiboldText = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 22.81,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14.83,
    letterSpacing: 1.65,
    fontWeight: FontWeight.w500,
  );
}
