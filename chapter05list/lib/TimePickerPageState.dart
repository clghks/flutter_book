import 'package:flutter/material.dart';

class TimePickerPageState extends StatefulWidget {
  var title;

  TimePickerPageState({this.title});

  @override
  State<StatefulWidget> createState() {
    return _TimePickerPageState();
  }
}

class _TimePickerPageState extends State<TimePickerPageState> {
  String _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TimePicker')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Future selectedDate = showTimePicker(
                    context: context, initialTime: TimeOfDay.now());

                selectedDate.then((value) {
                  setState(() {
                    if (value != null) {
                      _selectedTime = '${value.hour}:${value.minute}';
                    }
                  });
                });
              },
              child: Text('DatePicker'),
            ),
            Text('$_selectedTime')
          ],
        ),
      ),
    );
  }
}