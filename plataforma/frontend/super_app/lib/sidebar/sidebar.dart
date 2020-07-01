import 'package:flutter/material.dart';
import 'package:superapp/sidebar/Configuracion.dart';
import 'package:superapp/sidebar/notificaciones.dart';
import 'package:superapp/sidebar/profile.dart';

import 'multilevel_drawer.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter ML Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SideBarNav(),
    );
  }
}

class SideBarNav extends StatefulWidget {
  @override
  _SideBarNavState createState() => _SideBarNavState();
}

class _SideBarNavState extends State<SideBarNav> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
            child: Center()),
      ),
    );
  }
}
