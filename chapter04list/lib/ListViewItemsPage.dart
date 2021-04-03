import 'package:chapter04list/model/ListItem.dart';
import 'package:flutter/material.dart';

class ListViewItemsPage extends StatelessWidget {
  var title;
  final items = [
    ListItem(name: 'Home', icon: Icons.home),
    ListItem(name: 'Event', icon: Icons.event),
    ListItem(name: 'Camera', icon: Icons.camera)
  ];

  ListViewItemsPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: items.map((e) => ListTile(
          leading: Icon(e.icon),
          title: Text('${e.name}'),
          trailing: Icon(Icons.navigate_next),
          onTap: () {},
        )).toList(),
      ),
    );
  }
}