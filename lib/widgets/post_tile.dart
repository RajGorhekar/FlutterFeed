import 'package:FlutterFeed/widgets/custom_image.dart';
import 'package:FlutterFeed/widgets/post.dart';
import 'package:flutter/material.dart';

class PostTile extends StatelessWidget {
  final Post post;
  PostTile(this.post);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>print('Showing Post'),
      child: cachedNetworkImage(post.mediaUrl),
    );
  }
}
