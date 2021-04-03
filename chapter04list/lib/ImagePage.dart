import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  var title;

  ImagePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Image.network('http://bit.ly/2Pvz4t8'));
  }
}
