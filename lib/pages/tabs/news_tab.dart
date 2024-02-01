import 'package:flutter/material.dart';
import 'package:news_app/main.dart';
import 'package:news_app/pages/news_tab_ui/horizontal_scrolling_list_view.dart';
import 'package:news_app/pages/news_tab_ui/top_news_section.dart';
import 'package:news_app/pages/news_tab_ui/top_news_title.dart';
import 'package:news_app/pages/news_tab_ui//vertical_sliver_list.dart';
import 'package:news_app/pages/news_tab_ui/horizontal_divider.dart';

class NewsTab extends StatelessWidget {
  const NewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("NEWS",
                style: TTextTheme.lightTextTheme(context).titleSmall),
          ],
        ),
        actions: [
          Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     //  builder: (context) => SearchPage(),
                  //       fullscreenDialog: true),
                  // );
                },
                icon: const Icon(Icons.search));
          }),
        ],
      ),
      body: CustomScrollView(slivers: [
        HorizontalScrollingListView(),
        TopNewsTitle(title: 'Top News'),
        TopNewsSection(),
        TopNewsTitle(title: 'Latest News'),
        HorizontalDivider(),
        VerticalSliverLiverList(),
      ]),
    );
  }
}
