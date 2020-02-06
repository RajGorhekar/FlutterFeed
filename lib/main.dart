import 'package:flutter/material.dart';
import 'package:FlutterFeed/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFeed',
    
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch : Colors.deepPurple,
        accentColor: Colors.teal,
      ),
      home: Home(),
    );
  }
}
