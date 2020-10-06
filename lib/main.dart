import 'package:belajar1/pages/page_datalist.dart';
import 'package:belajar1/pages/page_login.dart';
import 'package:belajar1/pages/page_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var colorBg = Colors.blue;
  var colorAc = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DataListPage(colorBg: colorBg, colorAc: colorAc),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
