import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  var title;

  SliverPage({this.title});

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
