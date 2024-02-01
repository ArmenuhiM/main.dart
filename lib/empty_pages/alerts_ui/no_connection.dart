import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/constants.dart';
import 'package:news_app/utils/theme/widget_themes/text_button_theme.dart';
import 'package:news_app/utils/theme/widget_themes/text_theme.dart';

class NoConnection extends StatelessWidget {
  const NoConnection({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 150,
              child: Image.asset(
                'assets/images/no_connection.png',
                width: Constants.alertIconSize,
                height: Constants.alertIconSize,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 350,
              child: Column(
                children: [
                  Text(
                    'Your Title',
                    style: TTextTheme.lightTextTheme(context).displayMedium,
                  ),
                  const SizedBox(height: 10),
                  Text('Your Description',
                      style: TTextTheme.lightTextTheme(context).titleSmall,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 60,
              child: TextButton(
                style: TTextButtonTheme.lightTextButtonTheme.style,
                onPressed: () {
                  // Your button action here
                },
                child: const Text('Retry'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(NoConnection());
}
