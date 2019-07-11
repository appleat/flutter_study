import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}

class _BottomNavigationBarState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(
              title: Text('explore'), icon: Icon(Icons.explore)),
          BottomNavigationBarItem(
              title: Text('history'), icon: Icon(Icons.history)),
          BottomNavigationBarItem(title: Text('list'), icon: Icon(Icons.list)),
          BottomNavigationBarItem(
              title: Text('person'), icon: Icon(Icons.person)),
        ]);
  }
}
