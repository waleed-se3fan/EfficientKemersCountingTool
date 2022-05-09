import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget{
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Home();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        height: double.infinity,
        width: double.infinity,
        child: Image.asset('assets/dd.jpg'),
      ),
    );
  }
}