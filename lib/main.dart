import 'package:flutter/material.dart';

class FontSizeUtil {
  static double getResponsiveFontSize(double baseSize, BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    var fontSize = baseSize;

    if (width <= 480) {
      fontSize = baseSize * 0.8; // Adjust the scaling factor as needed
    } else if (width > 480 && width <= 960) {
      fontSize = baseSize * 1.2; // Adjust the scaling factor as needed
    } else {
      fontSize = baseSize * 1.5; // Adjust the scaling factor as needed
    }

    // You can add additional adjustments based on aspect ratio or other factors

    return fontSize;
  }
}

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme(BuildContext context) {
    return TextTheme(
      displayMedium: TextStyle(
        fontSize: FontSizeUtil.getResponsiveFontSize(25, context),
        color: Colors.black87,
      ),
      titleSmall: TextStyle(
        fontSize: FontSizeUtil.getResponsiveFontSize(40, context),
        color: Colors.black54,
      ),
    );
  }

  static TextTheme darkTextTheme(BuildContext context) {
    return TextTheme(
      displayMedium: TextStyle(
        fontSize: FontSizeUtil.getResponsiveFontSize(50, context),
        color: Colors.white70,
      ),
      titleSmall: TextStyle(
        fontSize: FontSizeUtil.getResponsiveFontSize(60, context),
        color: Colors.white60,
      ),
    );
  }
}
