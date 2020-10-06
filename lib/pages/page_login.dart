import 'package:belajar1/widgets/name_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key key,
    @required this.colorBg,
    @required this.colorAc,
  }) : super(key: key);

  final Color colorBg;
  final Color colorAc;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        extendBodyBehindAppBar: true,
        backgroundColor: widget.colorBg,
        body: SafeArea(
          top: false,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: NameCardWidget(
                    myText: myText, nameController: _nameController),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: widget.colorAc,
          child: Icon(Icons.send, color: widget.colorBg),
          onPressed: () {
            myText = _nameController.text;
            setState(() {});
          },
        ),
      ),
    );
  }
}
