import 'package:carousel_slider/carousel_slider.dart';
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
  return Padding(
    padding: const EdgeInsets.only(top: 20, bottom: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                print('클릭');
              },
              child: Column(
                children: [Icon(Icons.local_taxi, size: 40), Text('택시')],
              ),
            ),
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('블랙')],
            ),
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('바이크')],
            ),
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('대리')],
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('택시')],
            ),
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('블랙')],
            ),
            Column(
              children: [Icon(Icons.local_taxi, size: 40), Text('바이크')],
            ),
            Opacity(
                opacity: 0.0,
                child: Column(
                  children: [Icon(Icons.local_taxi, size: 40), Text('대리')],
                ))
          ],
        )
      ],
    ),
  );
}


Widget _buildMiddle() {
  final dummyItems = [
    'https://cdn.pixabay.com/photo/2018/11/12/18/44/thanksgiving-3811492_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/10/30/15/33/tajikistan-4589831_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/11/25/16/15/safari-4652364_1280.jpg'
  ];

  return CarouselSlider(
      options: CarouselOptions(height: 150),
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
    return ListTile(leading: Icon(Icons.notifications_none),title: Text('[이벤트] 이것은 공지사항입니다.'),);
  });

  return ListView(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: items,
  );
}