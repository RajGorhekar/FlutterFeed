import 'package:flutter/material.dart';

final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

AppBar header(context, {bool isAppTitle = false, String titleText ,bool wantback=false}) {
  return AppBar(
    leading: wantback ? IconButton(
      icon: new Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ) : Text(''),
    title: Column(
      children: <Widget>[
        SizedBox(height: 10),
        Text(
          isAppTitle ? "FlutterFeed" : titleText,
          style: TextStyle(
            foreground: Paint()..shader = linearGradient,
            fontFamily: isAppTitle ? "Signatra" : "",
            fontSize: isAppTitle ? 50.0 : 28.0,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
    centerTitle: true,
    backgroundColor: Colors.white,
  );
}
