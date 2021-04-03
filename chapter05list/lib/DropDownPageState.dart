import 'package:flutter/material.dart';

class DropDownPageState extends StatefulWidget {
  var title;

  DropDownPageState({this.title});

  @override
  State<StatefulWidget> createState() {
    return _DropDownPageState();
  }
}

class _DropDownPageState extends State<DropDownPageState> {
  final _valueList = ['첫 번째', '두 번째', '세 번째'];
  var _selectedValue = '첫 번째';

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
              DropdownButton(
                value: _selectedValue,
                items: _valueList
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}