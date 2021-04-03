import 'package:flutter/material.dart';

class SizedBoxPage extends StatelessWidget {
  var title;

  SizedBoxPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: SizedBox(
          width: 100,
          height: 100,
          child: Container(
            color: Colors.red,
          ),
        )
    );
  }
}