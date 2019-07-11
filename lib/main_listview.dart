import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: '菜单',
            onPressed: () => debugPrint('navigration button'),
          ),
          title: Text("Hello Flutter", textAlign: TextAlign.center),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: '菜单',
              onPressed: () => debugPrint('search button'),
            ),
          ],
        ),
        body: ListViewDemo());
  }
}
