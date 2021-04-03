import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatelessWidget {
  var title;

  FloatingActionButtonPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
