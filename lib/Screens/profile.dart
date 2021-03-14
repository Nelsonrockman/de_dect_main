import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../Screens/Dashscreen.dart';
String ad=address;
class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}
class _profileState extends State<profile> {
  @override

  int currentIndex=2;
  var routersIndex=['/second','/transaction','/profile','/settings'];
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          leading: Icon(Icons.home,color: Colors.black,size:35.0,),
          backgroundColor: Colors.white,
          title: Text('Profile', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30.0)),
          actions: <Widget>
          [
            Container
              (
              margin: EdgeInsets.only(right: 8.0),
              child: Row
                (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            )
          ],
        ),
        body: Center(
            child: Column(
              children: [

                Container(
                  padding: EdgeInsets.only(top: 50,bottom: 10.0),
                  child: QrImage(
                    data: ad,
                    size: 200,
                  ),
                ),
                Container(
                  child: Text('My Address',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20.0)),
                ),
                Container(
                  child:ElevatedButton(
                   child:
                    Text('Check Balance'),
                    onPressed:doSomething(),
                  ),
                ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Text('Balance:$address',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20.0),
          ),

        ),],
            ),
        ),
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
      ),
    );
  }

  doSomething(){

  }}

