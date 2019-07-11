import 'package:flutter/material.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: '菜单',
          //   onPressed: () => debugPrint('navigration button'),
          // ),
          title: Text("Hello Flutter", textAlign: TextAlign.center),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: '菜单',
              onPressed: () => debugPrint('search button'),
            ),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.directions_run),
              ),
              Tab(
                icon: Icon(Icons.directions_bus),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(
              Icons.directions_bus,
              size: 128.0,
              color: Colors.greenAccent,
            ),
            Icon(
              Icons.directions_bike,
              size: 128.0,
              color: Colors.greenAccent,
            ),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
