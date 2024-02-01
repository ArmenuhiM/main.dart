import 'package:flutter/material.dart';
import 'package:news_app/utils/theme/widget_themes/appbar_theme.dart';
import 'package:news_app/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:news_app/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme(context),
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme(context),
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    );
  }
}
