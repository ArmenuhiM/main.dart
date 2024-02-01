import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/constants.dart';
import 'package:news_app/utils/theme/widget_themes/text_theme.dart';

class NoNotificationPage extends StatelessWidget {

  const NoNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildCenteredContent(context),
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
            "You have n't any notifications",
            style: TTextTheme.lightTextTheme(context).displayMedium,
          ),
        ],
      ),
    );
  }
}
