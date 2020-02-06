import 'package:FlutterFeed/widgets/header.dart';
import 'package:FlutterFeed/widgets/progress.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

final usersRef = Firestore.instance.collection('users');

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

createUser() {
    usersRef
        .document("NFWpxQshn5DSkpZE3m8o")
        .setData({"username": "rishi", "postsCount": 0, "isAdmin": true});
  }

  updateUser() async {
    final doc = await usersRef.document("NFWpxQshn5DSkpZE3m8o").get();
    if (doc.exists) {
      doc.reference
          .updateData({"username": "John", "postsCount": 0, "isAdmin": false});
    }
  }

  deleteUser() async {
    final DocumentSnapshot doc =
        await usersRef.document("NFWpxQshn5DSkpZE3m8o").get();
    if (doc.exists) {
      doc.reference.delete();
    }
  }
  
class _TimelineState extends State<Timeline> {

  @override
  void initState() {
    super.initState();
    createUser();
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: header(context, isAppTitle: true),
      body: StreamBuilder<QuerySnapshot>(
        stream: usersRef.snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return circularProgress();
          }
          final List<Text> children = snapshot.data.documents
              .map((doc) => Text(doc['username']))
              .toList();
          return Container(
            child: ListView(
              children: children,
            ),
          );
        },
      ),
    );
  }
}
