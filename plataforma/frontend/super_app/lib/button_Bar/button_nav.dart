import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superapp/Patallas_Inicio/registro.dart';
import 'package:superapp/contenido/Comparar.dart';
import 'package:superapp/contenido/MisListas.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
//
      ),
      home: ButtomNav(),
    );
  }
}

class ButtomNav extends StatefulWidget {
  ButtomNav({Key key}) : super(key: key);

  @override
  _ButtomNavState createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  static List<Widget> _myPages = <Widget>[MisListas(), Comparar(), Registro()];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: _myPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            title: Text(
              'Settings',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title: Text('Contact'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
