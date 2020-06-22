import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superapp/Patallas_Inicio/bienvenida.dart';

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
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyText1: GoogleFonts.montserrat(textStyle: textTheme.bodyText1),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Bienvenida(),
    );
  }
}
