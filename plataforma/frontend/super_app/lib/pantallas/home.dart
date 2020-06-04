import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String nombreRuta = 'home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('SuperApp'),
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}
