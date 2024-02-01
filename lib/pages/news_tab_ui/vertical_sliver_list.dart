import 'package:flutter/material.dart';
import 'package:news_app/pages/detail_pages/top_news_detail_page.dart';

class VerticalSliverLiverList extends StatelessWidget {
  const VerticalSliverLiverList({Key? key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) => InkWell(
          onTap: () {
            // Handle the click action here, for example, navigate to a new page with the index
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TopNewsDetailPage(index: index)),
            );
          },
          child: Container(
            height: 330,
            margin: const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.network(
                      // Replace with your image URL or local asset path
                      'https://example.com/your-image.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.orangeAccent,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(11),
                          child: Column(
                            children: [
                              Text(
                                'Your Text Label Your Text Label Your Text Label',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                              ),
                              Text(
                                'Your Text Label Your Text Label Your Text Label',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(11),
                                child: Text(
                                  "y",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              color: Colors.grey,
                              icon: const Icon(Icons.play_arrow_outlined),
                              onPressed: () {
                                // Handle play button click
                              },
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 11),
                              child: IconButton(
                                color: Colors.grey,
                                icon: const Icon(Icons.ios_share_outlined),
                                onPressed: () {
                                  // Handle share button click
                                },
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        childCount: 10,
      ),
    );
  }
}

/// TO DO
class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Text('Details for item at index $index go here'),
      ),
    );
  }
}
