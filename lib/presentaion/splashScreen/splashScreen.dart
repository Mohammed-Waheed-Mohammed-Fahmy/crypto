import 'dart:async';

import 'package:app/presentaion/onpaording%20screens/view/onpoardingScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 3 seconds and then navigate to the HomeScreen
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Onpoardingscreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenH = MediaQuery.of(context).size.height;
    double screenW = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color.fromRGBO(14, 74, 98, 1), // Background color
        body: SafeArea(
            child: Center(
          child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/images/profiel/fox.png")),
        )));
  }
}
