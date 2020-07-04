import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:superapp/button_Bar/Comparar.dart';
import 'package:superapp/button_Bar/Logout.dart';
import 'package:superapp/button_Bar/Paquetes.dart';
import 'package:superapp/contenido/Inside_Home.dart';
import 'package:superapp/sidebar/Configuracion.dart';
import 'package:superapp/sidebar/notificaciones.dart';
import 'package:superapp/sidebar/profile.dart';
import 'package:superapp/widgets/constants.dart';
import 'package:superapp/widgets/multilevel_drawer.dart';

class ButtomNav extends StatefulWidget {
  ButtomNav({Key key}) : super(key: key);

  @override
  _ButtomNavState createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {
  PageController _pageController = PageController();
  List<Widget> _myPages = <Widget>[
    inside_Home(),
    Comparar(),
    Paquetes(),
    Salida(),
  ];

  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectIndex) {
    _pageController.jumpToPage(selectIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _myPages,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        iconSize: 25,
        onTap: _onItemTapped,
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
      ),

      //sideBar

      drawer: MultiLevelDrawer(
        backgroundColor: Colors.green.shade100,
        rippleColor: Colors.white,
        subMenuBackgroundColor: Colors.grey.shade100,
        divisionColor: Colors.grey,
        header: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/appLogo.png",
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Supper"),
              ],
            ),
          ),
        ),
        children: [
          MLMenuItem(
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_right),
              content: Text(
                "Profile",
              ),
              subMenuItems: [
                MLSubmenu(
                    onClick: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    submenuContent: Text("option 1")),
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
    );
  }
}
