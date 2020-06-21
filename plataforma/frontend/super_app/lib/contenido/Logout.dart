import 'package:flutter/material.dart';

class Salida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            IconButton(icon: Icon(Icons.exit_to_app), onPressed: (){
              
            })
            ],
          ),
        )
      ],
    );
  }
}