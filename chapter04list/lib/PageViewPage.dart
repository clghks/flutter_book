import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  var title;

  PageViewPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: PageView(
          children: [
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue)
          ],
        ));
  }
}
