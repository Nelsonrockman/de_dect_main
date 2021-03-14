import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  int currentIndex=3;
  var routersIndex=['/second','/transaction','/profile','/settings'];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index){
          setState(() {
            currentIndex=index;
            Navigator.pushNamed(context,routersIndex[currentIndex]);
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon:Icon(Icons.home),
            title:Text('Home'),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black,

          ),
          BottomNavyBarItem(
            icon:Icon(Icons.list),
            title:Text('Transaction'),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon:Icon(Icons.person),
            title:Text('Profile'),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
            icon:Icon(Icons.settings),
            title:Text('Profile'),
            activeColor: Colors.blueAccent,
            inactiveColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
