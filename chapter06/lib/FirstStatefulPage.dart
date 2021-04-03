import 'package:chapter06/SecondStatefulPage.dart';
import 'package:chapter06/model/Person.dart';
import 'package:flutter/material.dart';

class FirstStatefulPage extends StatefulWidget {
  @override
  _FirstStatefulPageState createState() => _FirstStatefulPageState();
}

class _FirstStatefulPageState extends State<FirstStatefulPage> {
  @override
  void initState() {
    super.initState();
    print('FirstStatefulPage initState()');
  }

  @override
  void dispose() {
    super.dispose();
    print('FirstStatefulPage dispose()');
  }

  @override
  Widget build(BuildContext context) {
    print('FirstStatefulPage build()');
    return Scaffold(
      appBar: AppBar(
        title: Text('First'),
      ),
      body: RaisedButton(
        child: Text('다음 페이지로'),
        onPressed: () {
          final person = Person('홍길동', 20);
          // final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondStatefulPage(person: person)));
        },
      ),
    );
  }
}