import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/main.dart';


class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme(BuildContext context) {
    return TextTheme(
      displayMedium: TextStyle(
        fontSize: FontSizeUtil.getResponsiveFontSize(30, context),
        color: Colors.black87,
      ),
      titleSmall: TextStyle(
        fontSize: FontSizeUtil.getResponsiveFontSize(20, context),
        color: Colors.black54,
      ),
    );
  }

  static TextTheme darkTextTheme(BuildContext context) {
    return TextTheme(
      displayMedium: TextStyle(
        fontSize: FontSizeUtil.getResponsiveFontSize(30, context),
        color: Colors.white70,
      ),
      titleSmall: TextStyle(
        fontSize: FontSizeUtil.getResponsiveFontSize(20, context),
        color: Colors.white60,
      ),
    );
  }
}


// class TTextTheme {
//   TTextTheme._();
//
//   static TextTheme getTextTheme(BuildContext context) {
//     Brightness currentBrightness = MediaQuery.of(context).platformBrightness;
//
//     return currentBrightness == Brightness.dark
//         ? darkTextTheme(context)
//         : lightTextTheme(context);
//   }
//
//   static TextTheme lightTextTheme(BuildContext context) {
//     return TextTheme(
//       displayMedium: TextStyle(
//         fontSize: FontSizeUtil.getResponsiveFontSize(30, context),
//         color: Colors.black87,
//       ),
//       titleSmall: TextStyle(
//         fontSize: FontSizeUtil.getResponsiveFontSize(20, context),
//         color: Colors.black54,
//       ),
//     );
//   }
//
//   static TextTheme darkTextTheme(BuildContext context) {
//     return TextTheme(
//       displayMedium: TextStyle(
//         fontSize: FontSizeUtil.getResponsiveFontSize(30, context),
//         color: Colors.white70,
//       ),
//       titleSmall: TextStyle(
//         fontSize: FontSizeUtil.getResponsiveFontSize(20, context),
//         color: Colors.white60,
//       ),
//     );
//   }
// }
//
// // Example usage in your widget
// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final textTheme = TTextTheme.getTextTheme(context);
//
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: textTheme,
//         // Other theme configurations...
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('My App'),
//         ),
//         body: Center(
//           child: Text(
//             'Hello, World!',
//             style: textTheme.displayMedium,
//           ),
//         ),
//       ),
//     );
//   }
// }





