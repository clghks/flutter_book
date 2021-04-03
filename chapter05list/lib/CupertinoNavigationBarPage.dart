import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNavigationBarPage extends StatefulWidget {
  var title;

  CupertinoNavigationBarPage({this.title});

  @override
  State<StatefulWidget> createState() {
    return _CupertinoNavigationBarPage();
  }
}

class _CupertinoNavigationBarPage extends State<CupertinoNavigationBarPage> {
  var _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text(widget.title),
      ),
      body: Column(
        children: [
          CupertinoSwitch(
              value: _isOn,
              onChanged: (value) {
                setState(() {
                  _isOn = value;
                });
              }),
          CupertinoButton(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.orange,
              child: Text('쿠퍼티노 AlertDialog'),
              onPressed: () {}),
          SizedBox(height: 40),
          CupertinoButton(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.orange,
              child: Text('쿠퍼티노 Picker'),
              onPressed: () {})
        ],
      ),
    );
  }
}
