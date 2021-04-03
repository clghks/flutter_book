import 'package:flutter/material.dart';

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