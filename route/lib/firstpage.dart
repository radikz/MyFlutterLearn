import 'package:flutter/material.dart';
import 'package:route/secondpage.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route"),),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondPage()),
            );
          },
          elevation: 8.0,
          child: Text("Go To Second Page"),
        ),
      ),
      backgroundColor: Colors.green,
    );
  }
}