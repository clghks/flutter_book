import 'package:flutter/material.dart';

enum Gender { MAN, WOMEN }

class RadioPageState extends StatefulWidget {
  var title;

  RadioPageState({this.title});

  @override
  State<StatefulWidget> createState() {
    return _RadioPageState();
  }
}

class _RadioPageState extends State<RadioPageState> {
  var _gender = Gender.MAN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text('남자'),
                leading: Radio(
                  value: Gender.MAN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('여자'),
                leading: Radio(
                  value: Gender.WOMEN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 40),
              RadioListTile(
                  title: Text('남자'),
                  value: Gender.MAN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  }),
              RadioListTile(
                  title: Text('여자'),
                  value: Gender.WOMEN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
