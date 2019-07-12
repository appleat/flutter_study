import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;
  PostShow({this.post});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.name),
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Image.network(post.url),
          Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    post.name,
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    post.director,
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  Text(
                    post.description,
                    style: Theme.of(context).textTheme.body1,
                  ),
                ],
              ))
        ],
      )),
    );
  }
}
