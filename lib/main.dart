import 'package:flutter/material.dart';
import 'package:portfolio/Screens/AboutScreen.dart';
import 'package:portfolio/Screens/ProfileScreen.dart';

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
        primaryColor: Colors.indigo,
        accentColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfileScreen(),
      routes: {
        AboutScreen.routeName: (ctx) => AboutScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen()
      },
    );
  }
}
