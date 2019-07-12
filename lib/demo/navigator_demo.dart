import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NavigatorDemo"),
      ),
      body: Row(
        children: <Widget>[
          FlatButton(
            child: Text("home"),
            onPressed: (){
              Navigator.pushNamed(context, "/home");
            },
          ),
          FlatButton(
            child: Text("about"),
            onPressed: () {
             // Navigator.push( context, MaterialPageRoute( builder: (context) => Page( title: "About", )));
              Navigator.pushNamed(context, "/about");
            },
          ),
        ],
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;

  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
