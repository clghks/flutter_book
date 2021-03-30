import 'package:flutter/material.dart';

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CircleAvatarPage(),
    );
  }
}

// 4.5.5
class CircleAvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: Column(
          children: [
            CircleAvatar(child: Icon(Icons.person)),
            CircleAvatar(backgroundImage: NetworkImage('http://bit.ly/2Pvz4t8'), child: Icon(Icons.person)),
            CircleAvatar(
              backgroundImage: NetworkImage('https://i.imgur.com/pfkkJds.jpg'),
              child: Image.network('https://www.woolha.com/media/2020/03/eevee.png'),
              radius: 100
            )
          ],
        )
    );
  }
}

// 4.5.4
class ProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: Column(
          children: [
            CircularProgressIndicator(),
            LinearProgressIndicator()
          ],
        )
    );
  }
}


// 4.5.3
class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: Icon(
          Icons.home,
          color: Colors.red,
          size: 60, // 기본값 24
        )
    );
  }
}

// 4.5.2
class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: Image.network('http://bit.ly/2Pvz4t8')
    );
  }
}

class ImageAssetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: Image.asset('images/flutter_icon.jpg')
    );
  }
}


// 4.5.1
class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: Text(
          'Hello World',
          style: TextStyle(
            fontSize: 40,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.red,
            letterSpacing: 4.0
          ),
        )
    );
  }
}

// 4.4.4
class FloatingActionButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        )
    );
  }
}

// 4.4.3
class IconButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: IconButton(
          icon: Icon(Icons.add),
          color: Colors.red,
          iconSize: 100,  // 기본값: 24.0
          onPressed: () {},
        )
    );
  }
}

// 4.4.2
class FlatButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: FlatButton(
          child: Text('FlatButton'),
          onPressed: () {},
        )
    );
  }
}

// 4.4.1
class RaisedButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: RaisedButton(
          child: Text('RaisedButton'),
          color: Colors.orange,
          onPressed: () {},
        )
    );
  }
}

class RaisedButtonClickPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: RaisedButton(
          child: Text('RaisedButton'),
          color: Colors.orange,
          onPressed: () {
            _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Button Click')));
          },
        )
    );
  }
}

// 4.3.5
class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            elevation: 4,
            child: Container(
              width: 200,
              height: 200,
            ),
          ),
        )
    );
  }
}

// 4.3.5
class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: SizedBox(
        width: 100,
        height: 100,
        child: Container(
          color: Colors.red,
        ),
      )
    );
  }
}

// 4.3.4
class ExpandedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: Column(
        children: [
          Expanded(flex: 2, child: Container(color: Colors.red)),
          Expanded(child: Container(color: Colors.green)),
          Expanded(child: Container(color: Colors.blue))
        ],
      ),
    );
  }
}

// 4.3.3
class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}

// 4.3.2
class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}

// 4.3.1
class CenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}

// 4.2.10
class BottomNavigationBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification'
          )
        ],
      ),
    );
  }
}

// 4.2.9
class TabBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab'),
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


// 4.2.8
class PageViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("제목"),
        ),
        body: PageView(
          children: [
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue)
          ],
        )
    );
  }
}


// 4.2.7
class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          )
        ],
      )
    );
  }
}

// 4.2.6
class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Event'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
            trailing: Icon(Icons.navigate_next),
            onTap: () {},
          )
        ],
      ),
    );
  }
}

class ListItem {
  String name;
  IconData icon;

  ListItem({this.name, this.icon});
}

class ListViewItemsPage extends StatelessWidget {
  final items = [
    ListItem(name: 'Home', icon: Icons.home),
    ListItem(name: 'Event', icon: Icons.event),
    ListItem(name: 'Camera', icon: Icons.camera)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
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

// 4.2.5
class SingleChildScrollViewPage extends StatelessWidget {
  final items = List.generate(100, (index) => index).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: items.map((e) => Text('$e')).toList(),
        ),
      ),
    );
  }
}

class ColumnScrollViewPage extends StatelessWidget {
  final items = List.generate(100, (index) => index).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((e) => Text('$e')).toList(),
        ),
      ),
    );
  }
}

class ColumnViewPage extends StatelessWidget {
  final items = List.generate(100, (index) => index).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: Column(
        children: items.map((e) => Text('$e')).toList(),
      ),
    );
  }
}

// 4.2.4
class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.green,
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.blue,
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          )
        ],
      ),
    );
  }
}

// 4.2.3
class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          )
        ],
      ),
    );
  }
}

// 4.2.2
class ColumnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          )
        ],
      ),
    );
  }
}

// 4.2.1
class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
      ),
    );
  }
}

// 4.1.1 예제 코드
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("제목"),
      ),
      body: Text('여기에 예제 작성'),
    );
  }
}
