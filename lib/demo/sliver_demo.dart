import 'package:flutter/material.dart';

import '../model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        title: Text("Sliver AppBar"),
        //  pinned: true, //  固定在上面 不随着list滚动
        floating: true, // 向下滚动显示 向上跟随隐藏
        // 新写一个面板跟随下滑显示 上滑消失 并伴随渐变动画
        expandedHeight: 128.0,
        flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "liuan".toUpperCase(),
              style: TextStyle(
                fontSize: 15,
                letterSpacing: 3.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            background: Image.network(
              "https://static.oschina.net/uploads/img/201907/11113631_y7kj.jpg",
              fit: BoxFit.cover,
            )),
      ),
      SliverSafeArea(
        sliver: SliverPadding(
          padding: EdgeInsets.all(9),
          sliver: SliverGridDemo(),
        ),
      )
    ]));
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Material(
              borderRadius: BorderRadius.circular(12.0),
              elevation: 14.0,
              shadowColor: Colors.green.withOpacity(0.5),
              child: Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      posts[index].url,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          posts[index].name,
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.greenAccent),
                        ),
                        Text(
                          posts[index].director,
                          style: TextStyle(
                              fontSize: 23.0, color: Colors.greenAccent),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        );
      }, childCount: posts.length),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2 / 4,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].url,
            fit: BoxFit.cover,
          ),
        );
      }, childCount: posts.length),
    );
  }
}
