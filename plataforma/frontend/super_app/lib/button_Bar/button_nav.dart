import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superapp/button_Bar/Comparar.dart';
import 'package:superapp/button_Bar/MisListas.dart';
import 'package:superapp/contenido/Logout.dart';
import 'package:superapp/contenido/constants.dart';
import 'package:superapp/sidebar/Configuracion.dart';
import 'package:superapp/sidebar/sidebar.dart';

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
  static List<Widget> _myPages = <Widget>[
    MisListas(),
    Comparar(),
    Configuracion(),
    Salida(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarNav(),
      appBar: AppBar(
        backgroundColor: Color(0xff2AA467),
        title: Text('Super App'),
      ),
      body: _myPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff2AA467),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: kTextIconColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.compare_arrows,
              color: Colors.white,
            ),
            title: Text(
              'Comparar',
              style: TextStyle(color: kTextIconColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cake,
              color: Colors.white,
            ),
            title: Text(
              'Paquetes',
              style: TextStyle(color: kTextIconColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: Text(
              'Salida',
              style: TextStyle(color: kTextIconColor),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
