import 'package:flutter/material.dart';

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Divider(
        color: Colors.grey,
        thickness: 1,
        height: 10.0,
      ),
    ));
  }
}
