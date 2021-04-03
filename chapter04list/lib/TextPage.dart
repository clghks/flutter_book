import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  var title;

  TextPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Text(
          'Hello World',
          style: TextStyle(
              fontSize: 40,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.red,
              letterSpacing: 4.0),
        ));
  }
}
