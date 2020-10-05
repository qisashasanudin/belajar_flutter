import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() {
  // WidgetsApp // MaterialApp // CupertinoApp
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colorBg = Colors.blue;
  var colorAc = Colors.white;
  var myText = "Hello World";
  TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //TODO
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: colorBg,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Home"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Qisas Hasanudin"),
                accountEmail: Text("q.t.hasanudin@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://lh3.googleusercontent.com/-IuflvAtHX2k/Wxj7H86zI3I/AAAAAAAASf8/3z2iLMXLc8kcunSFBEtcanJ9L1jo__dBwCEwYBhgLKtMDAL1OcqzG9NdnFB8mOzqsYDo4xBn6zsbW1c9gckv7AB9WjutHFvkoKaAIY5kz8rbl2tF-H8NNa2e9ByyS72GNi9xjxJorUBdVbgI2RZta9AD9thO5cogy0zK8L5P9Dve3WwJIFFGdx0bdsDZpkCb6TdD_X8XHfbSpHT9-2tgXO4H8Ezble5jCjeN4PEnP0-HEvWFIvK3YnF7vuOTZ3KZygQut82QWNrkSaLbvf3BcCzm0_RLlOzRMQSAxDmIF54OZJYku__fhr8c8_wFU2zBSJY01Uhv6q1LWqsFFw5XDRw6rYiRdRbkhrQp1mR_HRV4ckt9YVSiOl7I5oh9eS7ykOB4yqEJwWx6Kt464pD5-DLclCbhsBToFD6jKvIHnmNpeXNIU_fVys53C5fitO_kOGYQ55iesB-fxE1HzVt-sNAvSdvMMIB0XRqj40OeGXozmFfd4odCAwRivkL4emf2CbCr7tiPEgKZUB6J4_kWjCXmbc-GR16SFhhgoo9csDvNB2ul8D_SSYtmpn-zKVSibIbhLGQ90llPHkSCn1K4S3l2QDzbTfkXvUntsbfv3IDrIrqfQbqNeHHG1Zlc_qfhu5GoLxYfCz0T0gvPhELELa6I_pMYwhdLr-wU/w140-h139-p/Sedih%2B%2528165%2529.JPG")),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://lh3.googleusercontent.com/-NEwodt3FuzU/VWXzjOZGArI/AAAAAAAAmTQ/zeHfSQ8_jEAGzYjlLJNXLRLLQs6X4RzRwCEwYBhgLKtMDAL1OcqzUStPqQgVftY_sopRyLbfGNMRYyEzEypkmvgEfVCKTerovm7iCkjFFo3k2AjG4cWm9EP8Q5kle7NVtROkM_ckPHOWyqR4SI0zrFvJb2ReuYCRlGtE3BLVDEol22PHw_7_jwoZdLMxqgZr0wZlXp8w1yJQQi45ha6T6y5bUnOou_h4-wlEgzKIsrUvhiN2345QOli4OTTsr7sLBpqCx4idiADGeDaez55uITkRPVJPIX_Uzm9QLg4rVTyMa2qcA7w0LHqRtNdz1PP0Ig7h5Iy4Q4k4pnz4fdfpNnf8BXjYOCv0JjZ_i3TT0DCs9A7OYELKx0WyVIPmVY0lnbpftuJyLwnWeN4HwylfNj1xMglaabb9yS7wx0tACWjqnYSVR4sOMKQXEiNVBsC4KHJOBUcUxhVz8pnkHh_7cyQKs8uqZJmFLPHk-DI4sLzZLq-Zg09iAj1AcItLkewCoRwp134HWAWEB-L5-FFaJi9H9udPJTcwE5wNJnuffflAxpCUmRZx7_A0e6Pt0_q3b_N2i-8gx553bx29hJjqo5Dt8OAdApfCIFOmlbv8sllNQPa8iNpuSyMuzsLkb5IQ48VQLn_l49vBmLI3My6ocshHVPr8whf7r-wU/w140-h139-p/3bullet_logo.jpg"))
                ],
                onDetailsPressed: () {},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Qisas Hasanudin"),
                subtitle: Text("Profile Settings"),
                trailing: Icon(Icons.edit),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("q.t.hasanudin@gmail.com"),
                subtitle: Text("Account Settings"),
                trailing: Icon(Icons.edit),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SafeArea(
          top: false,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "assets/bg.jpg",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        myText,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            hintText: "Enter your username",
                            labelText: "Username",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: colorAc,
          mini: true,
          child: Icon(Icons.send, color: Colors.grey),
          onPressed: () {
            myText = _nameController.text;
            setState(() {});
          },
        ),
        bottomNavigationBar: CurvedNavigationBar(
          color: colorAc,
          backgroundColor: colorBg,
          buttonBackgroundColor: colorAc,
          height: 50,
          items: <Widget>[
            Icon(Icons.home, color: Colors.grey),
            Icon(Icons.favorite, color: Colors.grey),
            Icon(Icons.add, color: Colors.grey),
            Icon(Icons.list, color: Colors.grey),
            Icon(Icons.person, color: Colors.grey),
          ],
          animationDuration: Duration(milliseconds: 200),
          animationCurve: Curves.bounceInOut,
          index: 2,
          onTap: (index) {
            debugPrint("Current index is $index");
          },
        ),
      ),
    );
  }
}
