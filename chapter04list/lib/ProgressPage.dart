import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  var title;

  ProgressPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Column(
          children: [CircularProgressIndicator(), LinearProgressIndicator()],
        ));
  }
}
