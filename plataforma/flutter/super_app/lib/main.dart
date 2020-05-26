import 'package:flutter/material.dart';
import 'package:superapp/pantallas/acceso.dart';
import 'package:superapp/pantallas/inicio.dart';
import 'package:superapp/pantallas/promo.dart';

void main() {
  runApp(Super());
}

class Super extends StatefulWidget {
  @override
  _SuperState createState() => _SuperState();
}

class _SuperState extends State<Super> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0E1020),
        scaffoldBackgroundColor: Color(0xff0E1020),
      ),
      initialRoute: Acceso.nombreRuta,
      routes: {
        Acceso.nombreRuta: (context) => Acceso(),
        Promo.nombreRuta: (context) => Promo(),
        Inicio.nombreRuta: (context) => Inicio(),
      },
    );
  }
}
