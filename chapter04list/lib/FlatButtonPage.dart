import 'package:flutter/material.dart';

class FlatButtonPage extends StatelessWidget {
  var title;

  FlatButtonPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: FlatButton(
          child: Text('FlatButton'),
          onPressed: () {},
        )
    );
  }
}