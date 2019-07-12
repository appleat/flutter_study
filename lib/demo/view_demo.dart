import 'package:flutter/material.dart';

import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridviewBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].url,
        fit: BoxFit.fill,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      itemCount: posts.length,
      itemBuilder: _gridviewBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 2 / 3,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),
        child: Text("item $index"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
//      scrollDirection: Axis.horizontal, // 横向滚动
      children: _buildTiles(54),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment(0, 0),
        child: Text("item $index"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
//      scrollDirection: Axis.horizontal, // 横向滚动
      children: _buildTiles(54),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) => Stack(
              children: <Widget>[
                SizedBox.expand(
                  child: Image.network(
                    posts[index].url,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        posts[index].name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      Text(posts[index].director),
                    ],
                  ),
                ),
              ],
            ));
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
//      pageSnapping: false,
//      reverse: true,
      scrollDirection: Axis.vertical,
      onPageChanged: (pageIndex) => debugPrint('$pageIndex'),
      controller: PageController(
          initialPage: 1, keepPage: false, viewportFraction: 0.95),
      children: <Widget>[
        Container(
          color: Colors.pink[100],
          alignment: Alignment.center,
          child: Text(
            "ONE",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.lightBlue[100],
          alignment: Alignment.center,
          child: Text(
            "TWO",
            style: TextStyle(fontSize: 32, color: Colors.black),
          ),
        ),
        Container(
          color: Colors.yellow[100],
          alignment: Alignment.center,
          child: Text(
            "THREE",
            style: TextStyle(fontSize: 32, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
