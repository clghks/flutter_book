import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  var title;

  CircleAvatarPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Column(
          children: [
            CircleAvatar(child: Icon(Icons.person)),
            CircleAvatar(
                backgroundImage: NetworkImage('http://bit.ly/2Pvz4t8'),
                child: Icon(Icons.person)),
            CircleAvatar(
                backgroundImage:
                    NetworkImage('https://i.imgur.com/pfkkJds.jpg'),
                child: Image.network(
                    'https://www.woolha.com/media/2020/03/eevee.png'),
                radius: 100)
          ],
        ));
  }
}
