import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  var title;

  CardPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ),
            elevation: 4,
            child: Container(
              width: 200,
              height: 200,
            ),
          ),
        )
    );
  }
}