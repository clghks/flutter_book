import 'package:flutter/material.dart';

class ImageAssetPage extends StatelessWidget {
  var title;

  ImageAssetPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Image.asset('images/flutter_icon.jpg'));
  }
}
