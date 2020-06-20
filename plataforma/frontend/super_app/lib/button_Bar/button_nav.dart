import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Button());

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Fluid Sidebar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Button_Bar(),
    );
  }
}

class Button_Bar extends StatefulWidget {
  @override
  _Button_BarState createState() => _Button_BarState();
}

class _Button_BarState extends State<Button_Bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Supper App",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.deepOrange,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SuperApp',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        height: 50,
        items: <Widget>[
          Icon(Icons.verified_user, size: 20, color: Colors.black),
          Icon(Icons.add, size: 20, color: Colors.black),
          Icon(Icons.list, size: 20, color: Colors.black),
        ],
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          debugPrint("Print this $index");
        },
      ),
    );
  }
}
