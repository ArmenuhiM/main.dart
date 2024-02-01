import 'package:flutter/material.dart';

/// -- Light & Dark Text Button Themes
class TTextButtonTheme {
  TTextButtonTheme._(); // To avoid creating instances

  static final ButtonStyle customButtonStyle = ButtonStyle(
    overlayColor: MaterialStateProperty.all(Colors.transparent),
  );

  /// -- Light Theme
  static final lightTextButtonTheme = TextButtonThemeData(
    style: TTextButtonTheme.customButtonStyle.merge(
      TextButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFFa81967),
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: Colors.grey,
        textStyle: const TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
        minimumSize: const Size(260.0, 45.0),
      ),
    ),
  );

  /// -- Dark Theme
  static final darkTextButtonTheme = TextButtonThemeData(
    style: TTextButtonTheme.customButtonStyle.merge(
      TextButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFFa81967),
        disabledForegroundColor: Colors.grey,
        disabledBackgroundColor: Colors.grey,
        textStyle: const TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: const Size(260.0, 45),
      ),
    ),
  );
}
