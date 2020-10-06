import 'package:belajar1/custom_nav_bar.dart';
import 'package:belajar1/drawer.dart';
import 'package:belajar1/widgets/selection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
    @required this.colorBg,
    @required this.colorAc,
  }) : super(key: key);

  final Color colorBg;
  final Color colorAc;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Hello World";
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //do something
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        //extendBodyBehindAppBar: true,
        backgroundColor: widget.colorBg,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Home"),
        ),
        drawer: AppDrawer(),
        body: Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.arrow_back_ios, color: widget.colorAc),
                  ImageCard(),
                  Icon(Icons.arrow_forward_ios, color: widget.colorAc),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: widget.colorAc,
          mini: true,
          child: Icon(Icons.edit, color: widget.colorBg),
          onPressed: () {
            //do something
            //setState(() {});
          },
        ),
        bottomNavigationBar:
            CustomNavBar(colorAc: widget.colorAc, colorBg: widget.colorBg),
      ),
    );
  }
}
