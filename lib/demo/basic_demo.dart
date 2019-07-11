import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

class TextDemo extends StatelessWidget {
  final String _title = '春江花月夜';
  final String _author = '张若虚';

  @override
  Widget build(BuildContext context) {
    return Text(
      "《$_title》--- $_author \n春江潮水连海平，海上明月共潮生。 滟滟随波千万里，何处春江无月明！ 江流宛转绕芳甸，月照花林皆似霰。 空里流霜不觉飞，汀上白沙看不见。 江天一色无纤尘，皎皎空中孤月轮。 江畔何人初见月？江月何年初照人？",
      style: TextStyle(fontSize: 20.0, color: Colors.white),
      textAlign: TextAlign.center,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'appleat',
          style: TextStyle(
            color: Colors.deepOrangeAccent,
            fontSize: 35.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w300,
          ),
          children: [
            TextSpan(
                text: '.net',
                style: TextStyle(color: Colors.purple, fontSize: 20.0))
          ]),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey[400], // 背景颜色
      decoration: BoxDecoration(
          // 背景图像, 不能与 color 同时设置
          image: DecorationImage(
              image: NetworkImage(
                  "http://e.hiphotos.baidu.com/image/pic/item/4610b912c8fcc3cef70d70409845d688d53f20f7.jpg"),
              alignment: Alignment.topCenter,
              // repeat: ImageRepeat.repeatY,
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.yellow[300].withOpacity(0.8), BlendMode.colorBurn)
            )
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         
          Container(
            child: Icon(
              Icons.pool,
              size: 32,
              color: Colors.pink,
            ),
            // color: Color.fromRGBO(4, 240, 125, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(9.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(4, 240, 125, 1.0),
              border: Border.all(
                  color: Colors.black, width: 3.0, style: BorderStyle.solid),
              // borderRadius: BorderRadius.circular(16.0), // 设置圆角效果
              // borderRadius: BorderRadius.only( // 分别设置个角
              //   bottomLeft: Radius.circular(30.0),
              //   topRight:  Radius.circular(30.0),
              // ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(6.0, 7.0), // X轴，Y轴
                    //color: Color.fromRGBO(4, 240, 125, 1.0),
                    blurRadius: 11.0, // 模糊
                    spreadRadius: 1.0 // 阴影扩散大小，正数大，负数小
                    )
              ],
              shape: BoxShape.circle, // 圆形盒子，不能使用圆角效果
              // gradient: RadialGradient( // 镜像渐变效果
              //   colors: [
              //     Colors.yellow,
              //     Colors.blue
              //   ]
              // ) ,
              gradient: LinearGradient(
                // 线性渐变效果
                colors: [Colors.yellow, Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          RichTextDemo(),
          TextDemo(),
        ],
      ),
    );
  }
}
