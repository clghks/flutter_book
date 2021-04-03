import 'package:flutter/material.dart';

class DatePickerPageState extends StatefulWidget {
  var title;

  DatePickerPageState({this.title});

  @override
  State<StatefulWidget> createState() {
    return _DatePickerPageState();
  }
}

class _DatePickerPageState extends State<DatePickerPageState> {
  DateTime _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Future selectedDate = showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2030),
                    builder: (BuildContext context, Widget child) {
                      return Theme(data: ThemeData.dark(), child: child);
                    });

                selectedDate.then((value) {
                  setState(() {
                    _selectedTime = value;
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
