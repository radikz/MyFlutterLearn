import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build Tab3');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'This is content of Tab3',
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.green,
      ),
      theme: ThemeData(
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
    );

  }
}