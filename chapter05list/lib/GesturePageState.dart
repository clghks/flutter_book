import 'package:flutter/material.dart';

class GesturePageState extends StatefulWidget {
  var title;

  GesturePageState({this.title});

  @override
  State<StatefulWidget> createState() {
    return _GesturePageState();
  }
}

class _GesturePageState extends State<GesturePageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print('GestureDetector 클릭~~~');
              },
              onHorizontalDragStart: (DragStartDetails details) {
                print('onHorizontalDragStart 클릭~~~$details');
              },
              child: Text('클릭 ME~~~!!'),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                print('InkWell 클릭~~~');
              },
              child: Text('클릭 ME~~~!!'),
            )
          ],
        ),
      ),
    );
  }
}
