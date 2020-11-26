import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route"),),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          elevation: 8.0,
          child: Text("Back To First Page"),
        ),
      ),
      backgroundColor: Colors.lightBlue,
    );
  }
}