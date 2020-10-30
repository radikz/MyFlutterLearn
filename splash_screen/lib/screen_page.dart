import 'package:flutter/material.dart';
import 'dart:async';

import 'home_page.dart';

class MySplashScreenPage extends StatefulWidget{
  @override
  _MySplashScreenPageState createState() => _MySplashScreenPageState();
}

class _MySplashScreenPageState extends State<MySplashScreenPage>{
  @override
  void initState(){
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async{
    var duration = Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) {
            return MyHomePage();
          }
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("My Splash Screen"),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      theme: ThemeData(
          primaryColor: Colors.deepOrange,
          accentColor: Color.fromARGB(255, 255, 0, 0),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))),
    );
  }
}