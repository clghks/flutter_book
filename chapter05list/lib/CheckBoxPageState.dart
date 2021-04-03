import 'package:flutter/material.dart';

class CheckBoxPageState extends StatefulWidget {
  var title;

  CheckBoxPageState({this.title});

  @override
  State<StatefulWidget> createState() {
    return _CheckBoxPageState();
  }
}

class _CheckBoxPageState extends State<CheckBoxPageState> {
  var _isChecked = false;

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
              Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value;
                    });
                  }),
              SizedBox(height: 40),
              Switch(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
