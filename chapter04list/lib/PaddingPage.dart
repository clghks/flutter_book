import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  var title;

  PaddingPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
