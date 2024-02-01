import 'package:flutter/material.dart';

class TopNewsTitle extends StatelessWidget {
  final String? title;

  const TopNewsTitle({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.grey,
        child:  Padding(
          padding: const EdgeInsets.all(11.0),
          child: Text(
            title ?? "",
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

