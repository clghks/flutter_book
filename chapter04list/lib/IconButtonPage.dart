import 'package:flutter/material.dart';

class IconButtonPage extends StatelessWidget {
  var title;

  IconButtonPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: IconButton(
          icon: Icon(Icons.add),
          color: Colors.red,
          iconSize: 100, // 기본값: 24.0
          onPressed: () {},
        ));
  }
}
