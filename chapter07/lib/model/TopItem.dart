import 'package:flutter/material.dart';

Widget TopItem(String title, IconData icon) {
  return GestureDetector(
    onTap: () {
      print('$title 클릭');
    },
    child: Column(
      children: [Icon(icon, size: 40), Text(title)],
    ),
  );
}
