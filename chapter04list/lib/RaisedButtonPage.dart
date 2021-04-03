import 'package:flutter/material.dart';

class RaisedButtonPage extends StatelessWidget {
  var title;

  RaisedButtonPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: RaisedButton(
          child: Text('RaisedButton'),
          color: Colors.orange,
          onPressed: () {},
        )
    );
  }
}