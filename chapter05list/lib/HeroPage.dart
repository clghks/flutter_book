import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  var title;

  HeroPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(this.title)),
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
