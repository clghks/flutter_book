import 'package:chapter04list/AlignPage.dart';
import 'package:chapter04list/BottomNavigationBarPage.dart';
import 'package:chapter04list/CardPage.dart';
import 'package:chapter04list/CenterPage.dart';
import 'package:chapter04list/CircleAvatarPage.dart';
import 'package:chapter04list/ColumnPage.dart';
import 'package:chapter04list/ColumnScrollViewPage.dart';
import 'package:chapter04list/ColumnViewPage.dart';
import 'package:chapter04list/ContainerPage.dart';
import 'package:chapter04list/ExpandedPage.dart';
import 'package:chapter04list/FlatButtonPage.dart';
import 'package:chapter04list/FloatingActionButtonPage.dart';
import 'package:chapter04list/GridViewPage.dart';
import 'package:chapter04list/IconButtonPage.dart';
import 'package:chapter04list/IconPage.dart';
import 'package:chapter04list/ImageAssetPage.dart';
import 'package:chapter04list/ImagePage.dart';
import 'package:chapter04list/ListViewItemsPage.dart';
import 'package:chapter04list/ListViewPage.dart';
import 'package:chapter04list/MyHomePage.dart';
import 'package:chapter04list/PaddingPage.dart';
import 'package:chapter04list/PageViewPage.dart';
import 'package:chapter04list/ProgressPage.dart';
import 'package:chapter04list/RaisedButtonClickPage.dart';
import 'package:chapter04list/RaisedButtonPage.dart';
import 'package:chapter04list/RowPage.dart';
import 'package:chapter04list/SingleChildScrollViewPage.dart';
import 'package:chapter04list/SizedBoxPage.dart';
import 'package:chapter04list/StackPage.dart';
import 'package:chapter04list/TabBarPage.dart';
import 'package:chapter04list/TextPage.dart';
import 'package:chapter04list/model/MainListModel.dart';
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

class MainList extends StatelessWidget{
  final items = [
    MainListModel(title: '4.1.1 실습환경 소개', widget: MyHomePage()),
    MainListModel(title: '4.2.1 Container', widget: ContainerPage(title: 'Container')),
    MainListModel(title: '4.2.2 Column', widget: ColumnPage(title: 'Column')),
    MainListModel(title: '4.2.3 Row', widget: RowPage(title: 'Row')),
    MainListModel(title: '4.2.4 Stack', widget: StackPage(title: 'Stack')),
    MainListModel(title: '4.2.5 SingleChildScrollView', widget: SingleChildScrollViewPage(title: 'SingleChildScrollView')),
    MainListModel(title: '4.2.5 ColumnScrollView', widget: ColumnScrollViewPage(title: 'ColumnScrollView')),
    MainListModel(title: '4.2.5 ColumnView', widget: ColumnViewPage(title: 'ColumnView')),
    MainListModel(title: '4.2.6 ListView', widget: ListViewPage(title: 'ListView')),
    MainListModel(title: '4.2.6 ListView Model', widget: ListViewItemsPage(title: 'ListView Model')),
    MainListModel(title: '4.2.7 GridView', widget: GridViewPage(title: 'GridView')),
    MainListModel(title: '4.2.8 PageView', widget: PageViewPage(title: 'PageView')),
    MainListModel(title: '4.2.9 TabBarView', widget: TabBarPage(title: 'TabBarView')),
    MainListModel(title: '4.2.10 BottomNavigationBar', widget: BottomNavigationBarPage()),
    MainListModel(title: '4.3.1 Center', widget: CenterPage(title: 'Center')),
    MainListModel(title: '4.3.2 Padding', widget: PaddingPage(title: 'Padding')),
    MainListModel(title: '4.3.3 Align', widget: AlignPage(title: 'Align')),
    MainListModel(title: '4.3.4 Expanded', widget: ExpandedPage(title: 'Expanded')),
    MainListModel(title: '4.3.5 SizedBox', widget: SizedBoxPage(title: 'SizedBox')),
    MainListModel(title: '4.3.6 Card', widget: CardPage(title: 'Card')),
    MainListModel(title: '4.4.1 RaisedButton', widget: RaisedButtonPage(title: 'RaisedButton')),
    MainListModel(title: '4.4.1 RaisedButtonClick', widget: RaisedButtonClickPage(title: 'RaisedButtonClick')),
    MainListModel(title: '4.4.2 FlatButton', widget: FlatButtonPage(title: 'FlatButton')),
    MainListModel(title: '4.4.3 IconButton', widget: IconButtonPage(title: 'IconButton')),
    MainListModel(title: '4.4.4 FloatingActionButton', widget: FloatingActionButtonPage(title: 'FloatingActionButton')),
    MainListModel(title: '4.5.1 Text', widget: TextPage(title: 'Text')),
    MainListModel(title: '4.5.2 Image', widget: ImagePage(title: 'Image')),
    MainListModel(title: '4.5.2 Image Asset', widget: ImageAssetPage(title: 'Image Asset')),
    MainListModel(title: '4.5.3 Icon', widget: IconPage(title: 'Asset')),
    MainListModel(title: '4.5.4 Progress', widget: ProgressPage(title: 'Progress')),
    MainListModel(title: '4.5.5 CircleAvatar', widget: CircleAvatarPage(title: 'CircleAvatar')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter04'),
      ),
      body: ListView(
        children: items.map((e) => ListTile(
          title: Text('${e.title}'),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => e.widget));
          },
          trailing: Icon(Icons.navigate_next),
        )).toList(),
      ),
    );
  }
}