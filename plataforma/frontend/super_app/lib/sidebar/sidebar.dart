import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Nunito"),
      title: "Super",
      home: Scaffold(
        body: Container(
          color: Color(0xff2AA467),
        ),
      ),
    );
  }
}

class SideBarNav extends StatefulWidget {
  @override
  _SideBarNavState createState() => _SideBarNavState();
}

class _SideBarNavState extends State<SideBarNav> {
  final List<String> menuItems = ["profile", "Configuracion"];
  final List<String> menuIcons = ["icon_add", "icon_blogger", "icon_settings"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  child: Text("Person"),
                ),
                Container(
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: menuItems.length,
                      itemBuilder: (context, index) => Container(
                        color: Color(0xff2AA467),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(20),
                              child: Image.asset(
                                  "assets/icons/${menuIcons[index]}.png"),
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                menuItems[index],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            GestureDetector(
                                child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              color: Colors.white,
                              child: Center(
                                child: Text("homepage"),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
