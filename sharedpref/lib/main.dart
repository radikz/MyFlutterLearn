import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textController = TextEditingController();
  String text = "";

  saveValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('key', textController.text);
  }

  void getValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    setState(() {
      text = prefs.getString("key");
    });

    _dialog();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyPref"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _edittext(),
            _row(),
          ],
        ),
      ),
    );
  }
  Widget _edittext(){
    return Container(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
            hintText: 'Type text'
        ),
      ),
    );
  }

  Widget _row(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width/3,
          child: RaisedButton(
            hoverColor: Colors.grey,
            padding: EdgeInsets.all(16.0),
            onPressed: saveValue,
            elevation: 8,
            child: Text("Save"),
            color: Colors.green,
            textColor: Colors.white,
          ),
        ),

        Container(
          width: MediaQuery.of(context).size.width/3,
          child: RaisedButton(
            hoverColor: Colors.grey,
            padding: EdgeInsets.all(16.0),
            onPressed: getValue,
            elevation: 8,
            child: Text("Load"),
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }

  void _dialog(){
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          content: Text('$text'),
        ));
  }

}
