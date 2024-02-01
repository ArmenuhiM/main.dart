import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //hjkhkjhkjhkj
        appBar: AppBar(
          title: Text('Custom Chip Example'),
        ),
        body: Center(
          child: MyCustomChip(
            label: 'Custom Chip',
            backgroundColor: Colors.blue,
            labelColor: Colors.white,
            borderRadius: BorderRadius.circular(12.0), // Adjust the corner radius
          ),
        ),
      ),
    );
  }
}

class MyCustomChip extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color labelColor;
  final BorderRadiusGeometry borderRadius;

  MyCustomChip({
    required this.label,
    required this.backgroundColor,
    required this.labelColor,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Chip(
        label: Text(
          label,
          style: TextStyle(color: labelColor),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
