import 'package:flutter/material.dart';

class ColumnScrollViewPage extends StatelessWidget {
  final items = List.generate(100, (index) => index).toList();
  var title;

  ColumnScrollViewPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((e) => Text('$e')).toList(),
        ),
      ),
    );
  }
}
