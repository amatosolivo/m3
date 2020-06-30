import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('miguel'),
              accountEmail: Text('ing.santana@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xfff7892b),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              trailing: Icon(Icons.person),

            ),
      ListTile(
        title: Text('Profile'),
        trailing: Icon(Icons.person),),
        ListTile(
        title: Text('Profile'),
        trailing: Icon(Icons.person),)
          ],
        ),
      ),
    );
  }
}
