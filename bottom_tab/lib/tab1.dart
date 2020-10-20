import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget{
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  void initState() {
    super.initState();
    print('initState Tab1');
  }
  @override
  Widget build(BuildContext context) {
    print('build Tab1');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tab1'),
        ),
        body: Center(
          child: Text(
            'This is content of Tab1',
            style: TextStyle(fontSize: 30),
          ),
        ),
        backgroundColor: Colors.purple,
      ),
      theme: ThemeData(
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
    );

  }
}