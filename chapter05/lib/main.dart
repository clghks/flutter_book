import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StatefulPage(),
    );
  }
}

class StatefulPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CupertinoNavigationDialogBarPage();
  }
}

// 5.5.2
class _CupertinoNavigationDialogBarPage extends State<StatefulPage> {
  var _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('4.10 쿠퍼티노 디자인'),
      ),
      body: Column(
        children: [
          CupertinoSwitch(
              value: _isOn,
              onChanged: (value) {
                setState(() {
                  _isOn = value;
                });
              }),
          CupertinoButton(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.orange,
              child: Text('쿠퍼티노 AlertDialog'),
              onPressed: () {
                _showCupertinoDialog();
              }),
          SizedBox(height: 40),
          CupertinoButton(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.orange,
              child: Text('쿠퍼티노 Picker'),
              onPressed: () {
                showCupertinoPicker();
              })
        ],
      ),
    );
  }

  _showCupertinoDialog() {
    showDialog(context: context, builder: (context) => CupertinoAlertDialog(
      title: Text('Title'),
      content: Text('Content'),
      actions: [
        CupertinoDialogAction(child: Text('Cancel')),
        CupertinoDialogAction(child: Text('OK'), onPressed: () {
          Navigator.of(context).pop();
        },)
      ],
    ));
  }

  showCupertinoPicker() async {
    final _items = List.generate(100, (index) => index);
    var result = _items[0];

    await showCupertinoModalPopup(
        context: context,
        builder: (context) => Container(
            height: 200,
            child: CupertinoPicker(
              children: _items.map((e) => Text('No. $e')).toList(),
              itemExtent: 50,
              onSelectedItemChanged: (value) {
                result = _items[value];
              },
            )
        )
    );

    print(result);
  }
}

// 5.5.1
class _CupertinoNavigationBarPage extends State<StatefulPage> {
  var _isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('4.10 쿠퍼티노 디자인'),
      ),
      body: Column(
        children: [
          CupertinoSwitch(
              value: _isOn,
              onChanged: (value) {
                setState(() {
                  _isOn = value;
                });
              }),
          CupertinoButton(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.orange,
              child: Text('쿠퍼티노 AlertDialog'),
              onPressed: () {}),
          SizedBox(height: 40),
          CupertinoButton(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.orange,
              child: Text('쿠퍼티노 Picker'),
              onPressed: () {})
        ],
      ),
    );
  }
}

// 5.4.4
class SliverListPage extends StatelessWidget {
  final _items =
  List.generate(50, (index) => ListTile(title: Text('No. $index')));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver'),
              background: Image.network('https://i.imgur.com/pfkkJds.jpg',
                  fit: BoxFit.cover),
            ),
            actions: [IconButton(icon: Icon(Icons.person), onPressed: () {})],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_items),
          )
        ],
      ),
    );
  }
}

// 5.4.3
class SliverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver'),
              background: Image.network('https://i.imgur.com/pfkkJds.jpg',
                  fit: BoxFit.cover),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text('Center'),
            ),
          )
        ],
      ),
    );
  }
}

// 5.4.2
class _AnimatedPageState extends State<StatefulPage> {
  var _size = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated')),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                final random = Random();
                setState(() {
                  _size = random.nextInt(200).toDouble() + 100;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: _size,
                height: _size,
                child: Image.network('https://i.imgur.com/pfkkJds.jpg'),
                curve: Curves.fastOutSlowIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 5.4.1
class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HeroDetailPage()));
          },
          child: Hero(
            tag: 'image',
            child: Image.network('https://i.imgur.com/pfkkJds.jpg',
                width: 100, height: 100),
          ),
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Detail')),
      body: Hero(
        tag: 'image',
        child: Image.network('https://i.imgur.com/pfkkJds.jpg'),
      ),
    );
  }
}

// 5.3.1
class _GesturePageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture')),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print('GestureDetector 클릭~~~');
              },
              onHorizontalDragStart: (DragStartDetails details) {
                print('onHorizontalDragStart 클릭~~~$details');
              },
              child: Text('클릭 ME~~~!!'),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                print('InkWell 클릭~~~');
              },
              child: Text('클릭 ME~~~!!'),
            )
          ],
        ),
      ),
    );
  }
}

// 5.2.3
class _TimePickerPageState extends State<StatefulPage> {
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

// 5.2.2
class _DatePickerPageState extends State<StatefulPage> {
  DateTime _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DatePicker')),
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

// 5.2.1
class _DialogPageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog')),
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
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK')),
                      FlatButton(
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

class _DialogTextButtonPageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog')),
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

// 5.1.4
class _DropDownPageState extends State<StatefulPage> {
  final _valueList = ['첫 번째', '두 번째', '세 번째'];
  var _selectedValue = '첫 번째';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DropdownButton')),
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

// 5.1.3
enum Gender { MAN, WOMEN }

class _RadioPageState extends State<StatefulPage> {
  var _gender = Gender.MAN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Radio')),
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

// 5.1.2
class _CheckBoxPageState extends State<StatefulPage> {
  var _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CheckBox')),
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

// 5.1.1
class _InputPageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input')),
      body: Center(
          child: Column(
            children: [
              TextField(),
              SizedBox(height: 40),
              TextField(decoration: InputDecoration(labelText: '여기에 입력하세요.')),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: '여기입력하세요'),
              )
            ],
          )),
    );
  }
}