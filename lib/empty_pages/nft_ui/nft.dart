import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/constants.dart';
import 'package:news_app/utils/theme/widget_themes/text_button_theme.dart';
import 'package:news_app/utils/theme/widget_themes/text_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
          onPressed: () {},
          style: TTextButtonTheme.customButtonStyle,
          child: const Text('Claim', style: TextStyle(color: Colors.blue)),
        ),
      ]),
      body: SafeArea(
        child: _buildCenteredContent(context),
      ),
    );
  }

  Widget _buildCenteredContent(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/nft.png',
            width: Constants.alertIconSize,
            height: Constants.alertIconSize,
          ),
          const SizedBox(height: 16.0), // Add some spacing

          Text(
            "You have n't claimed a NTF yet",
            style: TTextTheme.lightTextTheme(context).displayMedium,
          ),
        ],
      ),
    );
  }
}
