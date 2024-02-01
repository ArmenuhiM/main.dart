import 'package:flutter/material.dart';
import 'package:news_app/pages/detail_pages/categories_detail_page.dart';
import 'package:news_app/pages/news_tab_ui/vertical_sliver_list.dart';

class HorizontalScrollingListView extends StatelessWidget {
  const HorizontalScrollingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemExtent: 250,
          padding: const EdgeInsets.all(8.0),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              // Navigate to another page when the item is tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CategoriesDetailPage(index: index, title: "Dynamic Title")
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  color: Colors.orangeAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Icon(Icons.star, color: Colors.white),
                      ),
                      Text(
                        'Item $index',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          itemCount: 5,
        ),
      ),
    );
  }
}

