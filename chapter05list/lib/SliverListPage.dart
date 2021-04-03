import 'package:flutter/material.dart';

class SliverListPage extends StatelessWidget {
  final _items =
      List.generate(50, (index) => ListTile(title: Text('No. $index')));

  var title;
  SliverListPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(this.title),
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
