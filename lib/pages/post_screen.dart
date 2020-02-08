import 'package:FlutterFeed/pages/home.dart';
import 'package:FlutterFeed/widgets/header.dart';
import 'package:FlutterFeed/widgets/post.dart';
import 'package:FlutterFeed/widgets/progress.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatelessWidget {
  final String userId;
  final String postId;

  PostScreen({this.userId,this.postId});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: postsRef.document(userId).collection('userPosts').document(postId).get(),
      builder: (context,snapshot){
        if(!snapshot.hasData){
          return circularProgress();
        }
        Post post = Post.fromDocument(snapshot.data);
        return Center(
          child: Scaffold(
            appBar: header(context,isAppTitle: true),
            body: ListView(
              children : <Widget> [
                Container(
                  child: post,
                )
              ]
            ),
          )
        );
      }
    );
  }
}
