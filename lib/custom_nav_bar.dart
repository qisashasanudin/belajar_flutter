import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key key,
    @required this.colorAc,
    @required this.colorBg,
  }) : super(key: key);

  final Color colorAc;
  final Color colorBg;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: colorAc,
      backgroundColor: colorBg,
      buttonBackgroundColor: colorAc,
      height: 50,
      items: <Widget>[
        Icon(Icons.home, color: colorBg),
        Icon(Icons.favorite, color: colorBg),
        Icon(Icons.music_note, color: colorBg),
        Icon(Icons.list, color: colorBg),
        Icon(Icons.person, color: colorBg),
      ],
      animationDuration: Duration(milliseconds: 200),
      animationCurve: Curves.bounceInOut,
      index: 2,
      onTap: (index) {
        debugPrint("Current index is $index");
      },
    );
  }
}
