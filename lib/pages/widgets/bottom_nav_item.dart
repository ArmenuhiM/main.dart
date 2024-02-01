import 'package:flutter/material.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem({required IconData icon})
      : super(
    icon: Icon(icon),
    label: '',
  );

  BottomNavItem.custom({required IconData icon})
      : super(
    icon: Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(icon, size: 40.0, color: Colors.white),
      ),
    ),
    label: '',
  );
}