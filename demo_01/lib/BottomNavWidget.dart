import 'package:flutter/material.dart';

import './pages/Airplay.dart';
import './pages/Home.dart';
import './pages/Pages.dart';
import './pages/Email.dart';

class BottomNavWidget extends StatefulWidget {
  _BottomNavWidget createState() => _BottomNavWidget();
}

class _BottomNavWidget extends State<BottomNavWidget> {
  final _BottomNavColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();
  @override
  void initState() {
    list
      ..add(HomeScreen())
      ..add(PagesScreen())
      ..add(EmailScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavColor,
              ),
              title: Text(
                'Home',
                style: TextStyle(color: _BottomNavColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _BottomNavColor,
              ),
              title: Text(
                'Pages',
                style: TextStyle(color: _BottomNavColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _BottomNavColor,
              ),
              title: Text(
                'Email',
                style: TextStyle(color: _BottomNavColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _BottomNavColor,
              ),
              title: Text(
                'Airplay',
                style: TextStyle(color: _BottomNavColor),
              )),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
      ),
    );
  }
}
