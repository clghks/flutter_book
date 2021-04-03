import 'package:flutter/material.dart';

class DialogTextButtonPageState extends StatefulWidget {
  var title;

  DialogTextButtonPageState({this.title});

  @override
  State<StatefulWidget> createState() {
    return _DialogTextButtonPageState();
  }
}

class _DialogTextButtonPageState extends State<DialogTextButtonPageState> {
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
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK')),
                      TextButton(
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
