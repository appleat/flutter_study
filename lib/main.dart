import 'package:flutter/material.dart';
import 'demo/form_demo.dart';

import 'demo/basic_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      initialRoute: "/form",
      routes: {
        "/": (context) => NavigatorDemo(),
        "/home": (context) => Home(),
        "/about": (context) => Page(
              title: "About",
            ),
        "/form": (context) => FormDemo()
      },
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
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
              Tab(
                icon: Icon(Icons.directions_boat),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            // ViewDemo(),
            SliverDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
