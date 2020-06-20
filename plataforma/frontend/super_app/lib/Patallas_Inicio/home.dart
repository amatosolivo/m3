import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superapp/button_Bar/button_nav.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SuperApp',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Button_Bar(),
    );
  }
}
