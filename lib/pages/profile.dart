import 'package:FlutterFeed/widgets/header.dart';
import 'package:FlutterFeed/widgets/progress.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context,titleText: 'Profile'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          linearProgress(),
          Expanded(child: Center(child : Text('profile'))),         
        ],
      ),
    );
  }
}
