import 'package:belajar1/custom_nav_bar.dart';
import 'package:belajar1/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataListPage extends StatefulWidget {
  const DataListPage({
    Key key,
    @required this.colorBg,
    @required this.colorAc,
  }) : super(key: key);

  final Color colorBg;
  final Color colorAc;

  static const String routeName = "/datalist";

  @override
  _DataListPageState createState() => _DataListPageState();
}

class _DataListPageState extends State<DataListPage> {
  //var myText = "Hello World";
  //TextEditingController _nameController = TextEditingController();
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState(() {});
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
          //elevation: 0,
          //backgroundColor: Colors.transparent,
          title: Text("Data List"),
        ),
        drawer: AppDrawer(),
        body: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      data[index]["title"],
                      style: TextStyle(color: widget.colorAc),
                    ),
                    subtitle: Text(
                      "ID: ${data[index]["id"]}",
                      style: TextStyle(color: widget.colorAc),
                    ),
                    leading: Image.network(data[index]["url"]),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: widget.colorAc,
          child: Icon(Icons.send, color: widget.colorBg),
          onPressed: () {
            //myText = _nameController.text;
            setState(() {});
          },
        ),
        bottomNavigationBar:
            CustomNavBar(colorAc: widget.colorAc, colorBg: widget.colorBg),
      ),
    );
  }
}
