import 'package:flutter/material.dart';

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build Tab2');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'This is content of Tab2',
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      theme: ThemeData(
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
    );

  }
}