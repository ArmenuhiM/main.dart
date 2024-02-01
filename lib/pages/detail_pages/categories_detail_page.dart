import 'package:flutter/material.dart';
import 'package:news_app/pages/news_tab_ui/vertical_sliver_list.dart';

class CategoriesDetailPage extends StatelessWidget {
  final int index;
  final String title;

  const CategoriesDetailPage(
      {required this.index, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: const CustomScrollView(slivers: [
        VerticalSliverLiverList(),
      ]),
    );
  }
}
