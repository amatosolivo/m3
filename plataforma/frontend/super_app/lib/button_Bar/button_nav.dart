import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superapp/button_Bar/Comparar.dart';
import 'package:superapp/button_Bar/MisListas.dart';
import 'package:superapp/contenido/Logout.dart';
import 'package:superapp/contenido/constants.dart';
import 'package:superapp/sidebar/Configuracion.dart';
import 'multilevel_drawer.dart';



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
      drawer: MultiLevelDrawer(
        backgroundColor: Colors.white,
        rippleColor: Colors.white,
        subMenuBackgroundColor: Colors.grey.shade100,
        divisionColor: Colors.grey,
        header: Container(
          height: size.height * 0.25,
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/dp_default.png",
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("RetroPortal Studio")
                ],
              )),
        ),
        children: [
          MLMenuItem(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_right),
              content: Text(
                "My Profile",
              ),
              subMenuItems: [
                MLSubmenu(
                    onClick: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    submenuContent: Text("Option 1")),
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
              ],
              onClick: () {}),
          MLMenuItem(
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_right),
              content: Text("Configuracion"),
              onClick: () {},
              subMenuItems: [
                MLSubmenu(
                    onClick: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Configuracion()));
                    },
                    submenuContent: Text("Option 1")),
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 2"))
              ]),
          MLMenuItem(
            leading: Icon(Icons.notifications),
            content: Text("Notificationes"),
            onClick: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Notificaciones()));
            },
          ),
          MLMenuItem(
              leading: Icon(Icons.payment),
              trailing: Icon(Icons.arrow_right),
              content: Text(
                "Pagos",
              ),
              subMenuItems: [
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 1")),
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 2")),
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 3")),
                MLSubmenu(onClick: () {}, submenuContent: Text("Option 4")),
              ],
              onClick: () {}),
        ],
      ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Multi Level Menu",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 65, 108, 1.0),
                    Color.fromRGBO(255, 75, 43, 1.0),
                  ]),
            ),
            child: Center()),,












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
