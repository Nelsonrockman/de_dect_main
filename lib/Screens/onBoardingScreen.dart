import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:de_dect/main.dart';
class onBoard extends StatelessWidget {
  @override
  List <PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.network('https://i.ibb.co/F5vqWKx/01.png'),
        title: "Welcome TO De-Dect",
        body: "A complete Decentralized application for forensics",
        footer: Text('Get Start with blockchain'),
        decoration: const PageDecoration(pageColor: Colors.white,),
      ),
      PageViewModel(
        image: Image.network('https://i.ibb.co/XXFDx7j/02.png'),
        title: "Welcome TO De-Dect",
        body: "A complete Decentralized application for forensics",
        footer: Text('Get Start with blockchain'),
        decoration: const PageDecoration(pageColor: Colors.white,),
      ),
      PageViewModel(
        image: Image.network('https://i.ibb.co/s2YDQQg/03.png'),
        title: "Welcome TO De-Dect",
        body: "A complete Decentralized application for forensics",
        footer: Text('Get Start with blockchain'),
        decoration: const PageDecoration(pageColor: Colors.white,),
      ),
    ];
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done:Text('Get Started ',style: TextStyle(color: Colors.black),),
        showSkipButton: true,
        skipFlex: 0,
        nextFlex: 0,
        skip: const Text('Skip'),
        next: const Icon(Icons.arrow_forward),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Color(0xFFBDBDBD),
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),),),
        onDone: (){
          Navigator.pushNamed(context, '/second');
        },
        pages: getPages(),
      ),

    );
  }
  }

