import 'package:carousel_slider/carousel_slider.dart';
import 'package:chapter07/model/TopItem.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [_buildTop(), _buildMiddle(), _buildBottom()],
    );
  }
}

Widget _buildTop() {
  var items = [
    TopItem('택시', Icons.local_taxi),
    TopItem('블랙', Icons.car_rental),
    TopItem('바이크', Icons.electric_bike),
    TopItem('대리', Icons.directions_run),
    TopItem('우버', Icons.directions_bike),
    TopItem('수리', Icons.car_repair),
    TopItem('설정', Icons.settings)
  ];

  return Padding(
    padding: const EdgeInsets.only(top: 20),
    child: GridView.count(
        crossAxisCount: 4,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: items),
  );
}

Widget _buildMiddle() {
  final dummyItems = [
    'https://cdn.pixabay.com/photo/2018/11/12/18/44/thanksgiving-3811492_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/10/30/15/33/tajikistan-4589831_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/11/25/16/15/safari-4652364_1280.jpg'
  ];

  return CarouselSlider(
      options: CarouselOptions(height: 150, enlargeCenterPage: true),
      items: dummyItems.map((e) {
        return Builder(builder: (context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(e, fit: BoxFit.cover),
            ),
          );
        });
      }).toList());
}

Widget _buildBottom() {
  final items = List.generate(10, (index) {
    return ListTile(
      leading: Icon(Icons.notifications_none),
      title: Text('[이벤트] 이것은 공지사항입니다.'),
    );
  });

  return ListView(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: items,
  );
}
