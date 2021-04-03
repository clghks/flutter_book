import 'package:flutter/material.dart';

class DialogPageState extends StatefulWidget {
  var title;

  DialogPageState({this.title});

  @override
  State<StatefulWidget> createState() {
    return _DialogPageState();
  }
}

class _DialogPageState extends State<DialogPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('제목'),
                    content: SingleChildScrollView(
                      child: ListBody(children: [
                        Text('Alert Dialog 입니다.'),
                        Text('OK를 눌러 닫습니다.')
                      ]),
                    ),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK')),
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancel')),
                    ],
                  );
                });
          },
          child: Text('Alert Dialog'),
        ),
      ),
    );
  }
}
