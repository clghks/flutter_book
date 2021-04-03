import 'package:chapter05list/AnimatedPageState.dart';
import 'package:chapter05list/CheckBoxPageState.dart';
import 'package:chapter05list/CupertinoAlertDialogPage.dart';
import 'package:chapter05list/CupertinoNavigationBarPage.dart';
import 'package:chapter05list/DatePickerPageState.dart';
import 'package:chapter05list/DialogPageState.dart';
import 'package:chapter05list/DialogTextButtonPageState.dart';
import 'package:chapter05list/DropDownPageState.dart';
import 'package:chapter05list/GesturePageState.dart';
import 'package:chapter05list/HeroPage.dart';
import 'package:chapter05list/RadioPageState.dart';
import 'package:chapter05list/SliverListPage.dart';
import 'package:chapter05list/SliverPage.dart';
import 'package:chapter05list/TextFieldPage.dart';
import 'package:chapter05list/TimePickerPageState.dart';
import 'package:chapter05list/model/MainListModel.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainListPage());
}

class MainListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chapter04',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainList(),
    );
  }
}

class MainList extends StatelessWidget {
  final items = [
    MainListModel(title: '5.1.1 TextField', widget: InputPageState(title: 'TextField')),
    MainListModel(title: '5.1.2 Checkbox', widget: CheckBoxPageState(title: 'Checkbox')),
    MainListModel(title: '5.1.3 Radio', widget: RadioPageState(title: 'Radio')),
    MainListModel(title: '5.1.4 DropdownButton', widget: DropDownPageState(title: 'DropdownButton')),
    MainListModel(title: '5.2.1 AlertDialog', widget: DialogPageState(title: 'AlertDialog')),
    MainListModel(title: '5.2.1 AlertDialog TextButton', widget: DialogTextButtonPageState(title: 'AlertDialog TextButton')),
    MainListModel(title: '5.2.2 DatePicker', widget: DatePickerPageState(title: 'DatePicker')),
    MainListModel(title: '5.2.3 TimePicker', widget: TimePickerPageState(title: 'TimePicker')),
    MainListModel(title: '5.3.1 GestureDetector', widget: GesturePageState(title: 'GestureDetector')),
    MainListModel(title: '5.4.1 Hero', widget: HeroPage(title: 'Hero')),
    MainListModel(title: '5.4.2 AnimatedContainer', widget: AnimatedPageState(title: 'AnimatedContainer')),
    MainListModel(title: '5.4.3 Sliver', widget: SliverPage(title: 'Sliver')),
    MainListModel(title: '5.4.4 SliverList', widget: SliverListPage(title: 'SliverList')),
    MainListModel(title: '5.5.1 Cupertino', widget: CupertinoNavigationBarPage(title: 'Cupertino')),
    MainListModel(title: '5.5.2 CupertinoAlertDialog', widget: CupertinoAlertDialogPage(title: 'CupertinoAlertDialog')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter04'),
      ),
      body: ListView(
        children: items.map((e) =>
            ListTile(
              title: Text('${e.title}'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => e.widget));
              },
              trailing: Icon(Icons.navigate_next),
            )).toList(),
      ),
    );
  }
}