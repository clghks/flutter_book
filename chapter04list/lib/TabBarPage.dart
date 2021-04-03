import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  var title;

  TabBarPage({this.title});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text(this.title),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.tag_faces)),
              Tab(text: '메뉴2'),
              Tab(icon: Icon(Icons.info), text: '메뉴3')
            ]),
          ),
          body: TabBarView(
            children: [
              Container(color: Colors.yellow),
              Container(color: Colors.orange),
              Container(color: Colors.red),
            ],
          ),
        ));
  }
}
