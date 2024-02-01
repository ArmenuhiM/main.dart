import 'package:flutter/material.dart';
import 'package:news_app/pages/tabs/account_tab.dart';
import 'package:news_app/pages/tabs/news_tab.dart';
import 'package:news_app/pages/tabs/notifications_tab.dart';
import 'package:news_app/pages/tabs/saved_tab.dart';
import 'package:news_app/pages/tabs/web_tab.dart';
import 'package:news_app/pages/widgets/bottom_nav_item.dart';
import 'package:news_app/search_ui/search.dart';
import 'package:news_app/utils/theme/theme.dart';
import 'package:news_app/utils/theme/widget_themes/text_theme.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatefulWidget {
  const NewsApp({super.key});

  @override
  State<StatefulWidget> createState() => _NavBarState();
}

class _NavBarState extends State<NewsApp> {
  final PageController _pageController = PageController(initialPage: 0);

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var pages = [
      const NewsTab(),
      const SavedTab(),
      const WebTab(),
      const NotificationsTab(),
      const AccountTab()
    ];

    var pageView = PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: pages,
    );

    var bottomNav = Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (tabIndex) {
          setState(() {
            _currentIndex = tabIndex;
          });
          _pageController.jumpToPage(tabIndex);
        },
        currentIndex: _currentIndex,
        items: [
          BottomNavItem(icon: Icons.home),
          BottomNavItem(icon: Icons.camera_enhance),
          BottomNavItem.custom(icon: Icons.add),
          BottomNavItem(icon: Icons.offline_pin),
          BottomNavItem(icon: Icons.local_cafe),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme(context),
      darkTheme: TAppTheme.darkTheme(context),
      // themeMode: ThemeMode.system,
      home: Scaffold(
        body: pageView,
        bottomNavigationBar: bottomNav,
      ),
    );
  }
}
