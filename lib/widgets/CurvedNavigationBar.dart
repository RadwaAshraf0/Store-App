import 'package:store/screens/Home/cart.dart';
import 'package:store/screens/Home/category/category.dart';
import 'package:store/screens/Home/home.dart';
import 'package:store/screens/Home/profile/profile.dart';
import 'package:store/screens/Home/setting.dart';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Bar extends StatefulWidget {
  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {
  final List<Widget> _homePages = [
    category(),
    cart(),
    home(),
    profile(),
    setting(),
  ];

  int _currentPageIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentPageIndex,
        height: 60.0,
        items: <Widget>[
          Icon(
            Icons.category_sharp,
            color: Color(0xfffff8fa),
            size: 25,
          ),
          Icon(
            Icons.shopping_cart_checkout,
            color: Color(0xfffff8fa),
            size: 25,
          ),
          Icon(
            Icons.home,
            color: Color(0xfffff8fa),
            size: 25,
          ),
          Icon(
            Icons.person,
            color: Color(0xfffff8fa),
            size: 25,
          ),
          Icon(
            Icons.settings,
            color: Color(0xfffff8fa),
            size: 25,
          ),
        ],
        color: Color(0xfff56a82),
        backgroundColor: Color(0x00ffffff),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
      ),
      body: _homePages[_currentPageIndex],
    );
  }
}
