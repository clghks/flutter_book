import 'package:flutter/material.dart';

class InputPageState extends StatefulWidget {
  var title;

  InputPageState({this.title});

  @override
  State<StatefulWidget> createState() {
    return _InputPageState();
  }
}

class _InputPageState extends State<InputPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
          child: Column(
        children: [
          TextField(),
          SizedBox(height: 40),
          TextField(decoration: InputDecoration(labelText: '여기에 입력하세요.')),
          SizedBox(height: 40),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: '여기입력하세요'),
          )
        ],
      )),
    );
  }
}
