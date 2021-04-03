import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAlertDialogPage extends StatefulWidget {
  var title;

  CupertinoAlertDialogPage({this.title});

  @override
  State<StatefulWidget> createState() {
    return _CupertinoAlertDialogPage();
  }
}

class _CupertinoAlertDialogPage extends State<CupertinoAlertDialogPage> {
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
              onPressed: () {
                _showCupertinoDialog();
              }),
          SizedBox(height: 40),
          CupertinoButton(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.orange,
              child: Text('쿠퍼티노 Picker'),
              onPressed: () {
                showCupertinoPicker();
              })
        ],
      ),
    );
  }

  _showCupertinoDialog() {
    showDialog(context: context, builder: (context) => CupertinoAlertDialog(
      title: Text('Title'),
      content: Text('Content'),
      actions: [
        CupertinoDialogAction(child: Text('Cancel')),
        CupertinoDialogAction(child: Text('OK'), onPressed: () {
          Navigator.of(context).pop();
        },)
      ],
    ));
  }

  showCupertinoPicker() async {
    final _items = List.generate(100, (index) => index);
    var result = _items[0];

    await showCupertinoModalPopup(
        context: context,
        builder: (context) => Container(
            height: 200,
            child: CupertinoPicker(
              children: _items.map((e) => Text('No. $e')).toList(),
              itemExtent: 50,
              onSelectedItemChanged: (value) {
                result = _items[value];
              },
            )
        )
    );

    print(result);
  }
}

