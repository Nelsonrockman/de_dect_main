import 'package:de_dect/Screens/Dashscreen.dart';
import 'package:de_dect/components/navbarcomponent.dart';
import 'package:flutter/material.dart';
import 'package:de_dect/Screens/Dashscreen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import '../components/navbarcomponent.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
class transaction extends StatefulWidget {
  @override
  _transactionState createState() => _transactionState();
}

class _transactionState extends State<transaction> {
  static const  apiKey='YD9I5NYKJNKJ2YDFHEP69Y3XMGKHUSSX6N';
  int currentIndex=1;
  var routersIndex=['/second','/transaction','/profile','/settings'];


    @override
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
