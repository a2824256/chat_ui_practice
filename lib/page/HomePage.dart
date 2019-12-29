import 'package:badges/badges.dart';
import 'package:chat_ui_practice/page/MyHomePage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _list = List();
  List<Widget> pages = List<Widget>();
  List<BottomNavigationBarItem> items = List<BottomNavigationBarItem>();

  @override
  void initState() {
    super.initState();
    _list
      ..add(MyHomePage(title: '消息(94)'))
      ..add(MyHomePage(title: '消息(94)'))
      ..add(MyHomePage(title: '消息(94)'))
      ..add(MyHomePage(title: '消息(94)'));
    items = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Badge(
          toAnimate: false,
          padding: EdgeInsets.all(3.0),
          position: BadgePosition.topLeft(left: 18),
          elevation: 0.0,
//          borderRadius: 0.5,
          badgeContent: Text(
            '94',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          child: Icon(Icons.chat_bubble),
        ),
//        icon: Icon(Icons.chat_bubble),
        title: Text('消息'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_pin),
        title: Text('通讯录'),
      ),
      BottomNavigationBarItem(
        icon: Badge(
          toAnimate: false,
          padding: EdgeInsets.all(2.5),
          position: BadgePosition.topLeft(left: 18),
          elevation: 0.0,
//          borderRadius: 0.5,
          badgeContent: Text(
            ' ',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          child: Icon(Icons.share),
        ),
//        icon: Icon(Icons.chat_bubble),
        title: Text('发现'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('我'),
      ),
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xEEEEEE),
      body: IndexedStack(
        index: _selectedIndex,
        children: _list,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        items: items,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[500],
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
