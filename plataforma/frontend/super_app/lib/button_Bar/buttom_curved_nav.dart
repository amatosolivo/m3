import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:superapp/contenido/Comparar.dart';
import 'package:superapp/contenido/Configuracion.dart';
import 'package:superapp/contenido/Logout.dart';
import 'package:superapp/contenido/MisListas.dart';
import 'package:superapp/contenido/Paquetes.dart';
import 'package:superapp/sideBar/sidebar.dart';


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final MisListas _misListas = MisListas();
  final Comparar _comparar = Comparar();
  final Paquetes _paquetes = Paquetes();
  final Configuracion _configuracion = Configuracion();
  final Salida _salida = Salida();

  Widget _showPage = MisListas();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _misListas;
        break;
      case 1:
        return _comparar;
        break;
      case 2:
        return _paquetes;
        break;
      case 3:
        return _configuracion;
        break;
      case 4:
        return _salida;
        break;
      default:
        return Container(
          child: Center(
            child: Text('Page not Found'),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//       appBar: AppBar(
//         title: Text('SupperApp',
//         style: TextStyle(fontSize: 20,color: Colors.white),),
//         backgroundColor: Color(0xfff7892b),
//
//       ),
//      drawer:,
      bottomNavigationBar: CurvedNavigationBar(
        index: pageIndex,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.format_list_numbered, size: 30),
          Icon(Icons.compare, size: 30),
          Icon(Icons.cake, size: 30),
          Icon(Icons.settings, size: 30),
          Icon(Icons.keyboard_return, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Color(0xfff7892b),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),
      body: Container(
          color: Color(0xfff7892b),
          child: Center(
            child: _showPage,
          )),
    );
  }
}
