import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPageState extends StatefulWidget {
  var title;

  AnimatedPageState({this.title});

  @override
  State<StatefulWidget> createState() {
    return _AnimatedPageState();
  }
}

class _AnimatedPageState extends State<AnimatedPageState> {
  var _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                final random = Random();
                setState(() {
                  _size = random.nextInt(200).toDouble() + 100;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: _size,
                height: _size,
                child: Image.network('https://i.imgur.com/pfkkJds.jpg'),
                curve: Curves.fastOutSlowIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
