import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  var title;
  final items = List.generate(100, (index) => index).toList();

  SingleChildScrollViewPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: items.map((e) => Text('$e')).toList(),
        ),
      ),
    );
  }
}
