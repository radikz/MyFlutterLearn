import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("First App"),
          ),
        ),
        body: Center(
          child: Text("Hello, World!!"),
        ),
      ),
      theme: ThemeData(
          primaryColor: Color.fromARGB(255, 0, 255, 0),
          accentColor: Color.fromARGB(255, 255, 0, 0),
          textTheme: TextTheme(bodyText2: TextStyle(color: Colors.purple))),
    );
  }
}
