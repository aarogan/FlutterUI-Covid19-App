import 'package:covid19/screens/bantuan.dart';
import 'package:covid19/screens/info.dart';
import 'package:covid19/screens/kasus.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  List<Widget> _widget = [Kasus(), Info(), Bantuan()];

  _onTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        unselectedItemColor: Color(0XFF99A6C0),
        selectedItemColor: Color(0XFF67C57B),
        selectedFontSize: 12,
        onTap: _onTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('kasus')),
          BottomNavigationBarItem(icon: Icon(Icons.info), title: Text('informasi')),
          BottomNavigationBarItem(icon: Icon(Icons.help), title: Text('bantuan')),
        ],
      ),
    );
  }
}