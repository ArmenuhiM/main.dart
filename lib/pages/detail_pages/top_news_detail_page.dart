import 'package:flutter/material.dart';

class TopNewsDetailPage extends StatelessWidget {
  final int index;

  const TopNewsDetailPage({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              const Text(
                "Lorem ipsum is placeholder text commonly used in the graphic, print, "
                "and publishing industries for previewing layouts and visual mockups.",
                // TODO need to get from model with help of index
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),
              // Image
              SizedBox(
                //width: double.infinity,
                height: 200,
                child: Image.network(
                  "https://example.com/your_image_url.jpg",
                  // TODO need to get from model with help of index
                  //width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 30),
              // Subtitle
              const Text(
                "Lorem ipsum is placeholder text commonly used in the graphic, print.",
                // TODO need to get from model with help of index
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 30),
              // Description
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
                "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis "
                "nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
                "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore "
                "eu fugiat nulla pariatur."
                "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui"
                " officia deserunt mollit anim id est laborum."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor "
                "incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud "
                "exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure "
                "dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit "
                "anim id est laborum."
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut"
                " labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco"
                " laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in "
                "voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
                "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim"
                " id est laborum.",
                // TODO need to get from model with help of index
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
