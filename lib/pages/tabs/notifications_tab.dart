import 'package:flutter/material.dart';
import 'package:news_app/empty_pages/notificaiton_ui/no_notification_ui.dart';
import 'package:news_app/utils/constants/constants.dart';
import 'package:news_app/utils/theme/widget_themes/text_theme.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoNotificationPage(),
    );
  }
}