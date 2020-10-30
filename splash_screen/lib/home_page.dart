import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Home"),
      ),
      body: Center(
        child: Text("This is my home page"),
      ),
    );
  }
}