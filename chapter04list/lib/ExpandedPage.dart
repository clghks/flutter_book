import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  var title;

  ExpandedPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Column(
        children: [
          Expanded(flex: 2, child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.green)),
          Expanded(child: Container(color: Colors.blue))
        ],
      ),
    );
  }
}
