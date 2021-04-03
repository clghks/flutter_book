import 'package:chapter06/SecondPage.dart';
import 'package:chapter06/model/Person.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('FirstPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: RaisedButton(
        child: Text('다음 페이지로'),
        onPressed: () async {
          final result = await Navigator.pushNamed(context, '/second');

          // final person = Person('홍길동', 20);
          // final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
          // final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(person: person)));
          print(result);
        },
      ),
    );
  }
}
