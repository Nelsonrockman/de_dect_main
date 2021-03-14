import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:de_dect/main.dart';
String address='0x7533983B89819CD6E42F7be7A8C6044D05db7D50';
class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int currentIndex=0;
  var routersIndex=['/second','/transaction','/profile','/settings'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
      backgroundColor: Colors.white,

        appBar: AppBar(
            elevation: 2.0,
            leading: Icon(Icons.home,color: Colors.black,size:35.0,),
            backgroundColor: Colors.white,
            title: Text('Dashboard', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30.0)),
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

          body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[
            _buildTile(
             Padding(
    padding: const EdgeInsets.all(24.0),
    child: Row
    (
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>
    [
    Column
    (
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>
    [
    Text('My  Address', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w700, fontSize: 24.0)),
    SizedBox(height: 6,),
    Text( address, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300, fontSize: 13.0))
    ],
    ),
    ]
    ),
    ),
    ),
    _buildTile(
    Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column
    (
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>
    [
    Material
    (
    color: Colors.teal,
    shape: CircleBorder(),
    child: Padding
    (
    padding: const EdgeInsets.all(16.0),
    child: Icon(Icons.file_copy_outlined, color: Colors.white, size: 30.0),
    )
    ),
    Padding(padding: EdgeInsets.only(bottom: 16.0)),
    Text('Create', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24.0)),
    Text('Create a case file', style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w400, fontSize: 15.0)),
    ]
    ),
    ),
    ),
    _buildTile(
    Padding
    (
    padding: const EdgeInsets.all(24.0),
    child: Column
    (
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>
    [
    Material
    (
    color: Colors.amber,
    shape: CircleBorder(),
    child: Padding
    (
    padding: EdgeInsets.all(16.0),
    child: Icon(Icons.notifications, color: Colors.white, size: 30.0),
    )
    ),
    Padding(padding: EdgeInsets.only(bottom: 16.0)),
    Text('Alerts', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24.0)),
    Text('All ', style: TextStyle(color: Colors.black45)),
    ]
    ),
    ),
    ),
    ],
            staggeredTiles: [
              StaggeredTile.extent(2, 110.0),
              StaggeredTile.extent(1, 180.0),
              StaggeredTile.extent(1, 180.0),
              StaggeredTile.extent(2, 220.0),
              StaggeredTile.extent(2, 110.0),
            ],
    ),
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
  }
Widget _buildTile(Widget child, {Function() onTap}) {
  return Material(

      elevation: 14.0,
      borderRadius: BorderRadius.circular(12.0),
      shadowColor: Color(0x802196F3),
      child: InkWell
        (
        // Do onTap() if it isn't null, otherwise do print()
          onTap: onTap != null ? () => onTap() : () { print('Not set yet'); },
          child: child
      )
  );
}
