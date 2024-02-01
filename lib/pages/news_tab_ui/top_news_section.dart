import 'package:flutter/material.dart';
import 'package:news_app/pages/detail_pages/top_news_detail_page.dart';

class TopNewsSection extends StatelessWidget {
  const TopNewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.grey,
        child: SizedBox(
          height: 350,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemExtent: 330,
            padding: const EdgeInsets.all(8.0),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopNewsDetailPage(index: index)),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
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
                              child: Text(
                                'Your Text Label Your Text Label Your Text Label',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
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
                                  onPressed: () {},
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 11),
                                  child: IconButton(
                                    color: Colors.grey,
                                    icon: const Icon(Icons.ios_share_outlined),
                                    onPressed: () {},
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
            itemCount: 5,
          ),
        ),
      ),
    );
  }
}

