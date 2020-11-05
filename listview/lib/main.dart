import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List View',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyListView(),
    );
  }
}

class MyListView extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    const desc = ['computer', 'desktop mac', 'desktop windows', 'gamepad',
    'headset', 'keyboard', 'laptop', 'laptop chromebook', 'laptop mac',
    'laptop windows', 'tablet android', 'tablet mac', 'router',
    'scanner', 'mouse', 'watch', 'tv'];

    const icons = [Icons.computer, Icons.desktop_mac,
    Icons.desktop_windows, Icons.gamepad, Icons.headset,
    Icons.keyboard, Icons.laptop, Icons.laptop_chromebook,
    Icons.laptop_mac, Icons.laptop_windows, Icons.tablet_android,
    Icons.tablet_mac, Icons.router, Icons.scanner,
    Icons.mouse, Icons.watch, Icons.tv];

    const colors = [Color(0xFFFFAB91), Color(0xFFFF8A65),
    Color(0xFFFFECB3), Color(0xFFFFE082), Color(0xFFFFD54F),
    Color(0xFFF0F4C3), Color(0xFFE6EE9C), Color(0xFFDCE775),
    Color(0xFFB3E5FC), Color(0xFF81D4FA), Color(0xFF4FC3F7),
    Color(0xFFD1C4E9), Color(0xFFB39DDB), Color(0xFF9575CD),
    Color(0xFFF8BBD0), Color(0xFFF48FB1), Color(0xFFF06292)];

    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView.builder(
        itemCount: desc.length,
        itemBuilder: (context, index) {
          return Card( //                           <-- Card widget
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(desc[index]),
              tileColor: colors[index],
            ),
          );
        },
      ),
    );
  }
}

