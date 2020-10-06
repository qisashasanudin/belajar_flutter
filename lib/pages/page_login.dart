import 'package:belajar1/pages/page_home.dart';
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

  static const String routeName = "/login";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var myText = "Hello World";
  final formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

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
          backgroundColor: widget.colorBg,
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                "assets/wallpaper2.jpg",
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.5),
                colorBlendMode: BlendMode.darken,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Card(
                        color: widget.colorAc.withOpacity(0.7),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextFormField(
                                controller: _usernameController,
                                keyboardType: TextInputType.emailAddress,
                                validator: (s) {},
                                decoration: InputDecoration(
                                  hintText: "Enter your email",
                                  labelText: "Email",
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                controller: _passwordController,
                                keyboardType: TextInputType.text,
                                validator: (s) {},
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Enter password",
                                  labelText: "Password",
                                ),
                              ),
                              SizedBox(height: 20),
                              RaisedButton(
                                onPressed: () {
                                  formKey.currentState.validate();
                                  Navigator.pushNamed(
                                      context, HomePage.routeName);
                                },
                                child: Text("Sign In"),
                                color: widget.colorAc,
                                textColor: widget.colorBg,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
