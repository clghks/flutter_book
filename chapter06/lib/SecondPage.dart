import 'package:chapter06/model/Person.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final Person person;

  SecondPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    print('SecondPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('이름 : ${person.name}'),
            // Text('나이 : ${person.age}'),
            RaisedButton(
              child: Text('이전 페이지로'),
              onPressed: () {
                Navigator.pop(context, 'OK');
              },
            )
          ],
        ),
      ),
    );
  }
}
