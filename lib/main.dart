import 'package:de_dect/Screens/profile.dart';
import 'package:de_dect/Screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:de_dect/Screens/transaction.dart';
import 'package:introduction_screen/introduction_screen.dart';
import './Screens/onBoardingScreen.dart';
import './Screens/Dashscreen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/transaction':(context)=>transaction(),
          '/settings':(context)=>settings(),
          '/profile':(context)=>profile(),
          '/second':(context)=>dashboard(),
          '/':(context)=>onBoard(),

        },
    );
  }
}
