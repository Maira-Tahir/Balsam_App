import 'dart:async';
import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:balsam/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlueColor,
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      body: Center(
        child: Container(
            height: 200,
            alignment: Alignment.center,
            child: Image.asset('assets/images/Logo.png')),
      ),
    );
  }
}
