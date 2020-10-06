import 'package:belajar1/pages/page_datalist.dart';
import 'package:belajar1/pages/page_login.dart';
import 'package:belajar1/pages/page_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var colorBg = Colors.orange;
  var colorAc = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(colorBg: colorBg, colorAc: colorAc),
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: {
        LoginPage.routeName: (context) =>
            LoginPage(colorBg: colorBg, colorAc: colorAc),
        HomePage.routeName: (context) =>
            HomePage(colorBg: colorBg, colorAc: colorAc),
        DataListPage.routeName: (context) =>
            DataListPage(colorBg: colorBg, colorAc: colorAc),
      },
    );
  }
}
