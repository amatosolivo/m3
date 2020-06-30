import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideBarNav extends StatefulWidget {
  @override
  _SideBarNavState createState() => _SideBarNavState();
}

class _SideBarNavState extends State<SideBarNav> {
  final List<String> menuItems = ["MisListas", ""];

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
                    child: ListView(
                      children: <Widget>[
                        Text("item1"),
                      ],
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
