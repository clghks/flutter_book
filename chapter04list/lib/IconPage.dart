import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  var title;

  IconPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Icon(
          Icons.home,
          color: Colors.red,
          size: 60, // 기본값 24
        ));
  }
}
