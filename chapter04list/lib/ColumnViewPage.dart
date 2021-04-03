import 'package:flutter/material.dart';

class ColumnViewPage extends StatelessWidget {
  final items = List.generate(100, (index) => index).toList();
  var title;

  ColumnViewPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Column(
        children: items.map((e) => Text('$e')).toList(),
      ),
    );
  }
}
