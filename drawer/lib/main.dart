import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyDrawer(),
    );
  }
}

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: Drawer(
        child: _listDrawer(context),
      ),
    );
  }

  Widget _myDrawer(){
    return UserAccountsDrawerHeader(
      accountName: Text('Rangga Dika'),
      accountEmail: Text('dikarinata@gmail.com'),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text('R', style: TextStyle(fontSize: 40.0)),
      ),
    );
  }

  Widget _listDrawer(BuildContext context){
    return ListView(
      children: <Widget>[
        _myDrawer(),
        ListTile(
          title: Text('Hello World'),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PageHelloWorld())),
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {},
        ),
      ],
    );
  }
}

class PageHelloWorld extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}