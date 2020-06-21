import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superapp/Patallas_Inicio/bienvenida.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SuperApp',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Bienvenida(),
    );
  }
}
