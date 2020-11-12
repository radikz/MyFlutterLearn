import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyGridView(),
    );
  }
}

class MyGridView extends StatelessWidget {
  final TextStyle style = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
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
        title: Text("Gridview", style: style),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 8.0,
        children: List.generate(desc.length, (_index) {
          return Container(
            child: Card(
              color: colors[_index],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(child: Icon(icons[_index], size:50.0,)),
                  Text(desc[_index]),
                ],
              ),
            ),
          );
        }),
      )
    );
  }
}