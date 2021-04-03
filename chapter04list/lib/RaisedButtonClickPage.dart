import 'package:flutter/material.dart';

class RaisedButtonClickPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var title;

  RaisedButtonClickPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: RaisedButton(
          child: Text('RaisedButton'),
          color: Colors.orange,
          onPressed: () {
            _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Button Click')));
          },
        )
    );
  }
}