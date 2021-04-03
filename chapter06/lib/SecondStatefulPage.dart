import 'package:chapter06/model/Person.dart';
import 'package:flutter/material.dart';

class SecondStatefulPage extends StatefulWidget {
  final Person person;

  SecondStatefulPage({Key key, @required this.person}): super(key: key);

  @override
  _SecondStatefulPage createState() => _SecondStatefulPage();
}

class _SecondStatefulPage extends State<SecondStatefulPage> {
  @override
  void initState() {
    super.initState();
    print('_SecondStatefulPage initState()');
  }

  @override
  void dispose() {
    super.dispose();
    print('_SecondStatefulPage dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('SecondStatefulPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.person.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RaisedButton(
              child: Text('이전 페이지로'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}