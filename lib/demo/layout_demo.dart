import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBoxDemo();
  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 200,
          maxWidth: 200
        ),
        child: Container(
          color: Colors.orange,
        ),
      )
    ]));
  }
}
/*
 * 设置子部件宽高比
 */
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.orange,
        ),
      )
    ]));
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 空间平均分配
        // crossAxisAlignment: CrossAxisAlignment.center, // 副轴
        children: <Widget>[
          Stack(
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 300,
                child: Container(
                  alignment: Alignment(0, -0.5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(7, 54, 255, 1),
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
              SizedBox(
                width: 70,
                height: 80,
                child: Container(
                  alignment: Alignment(0, -0.5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(6, 25, 178, 1),
                      // borderRadius: BorderRadius.circular(8.0)
                      shape: BoxShape.circle,
                      gradient: RadialGradient(colors: [
                        Color.fromRGBO(7, 102, 255, 1),
                        Color.fromRGBO(7, 54, 255, 1)
                      ])),
                  child: Icon(
                    Icons.brightness_2,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 12,
                ),
              ),
              Positioned(
                right: 40,
                top: 70,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 22,
                ),
              ),
              Positioned(
                right: 30,
                top: 170,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 22,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class IconBadeg extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadeg(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 34, 255, 1.0),
    );
  }
}
