import 'package:flutter/material.dart';

class Configuracion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.settings,
                size: 30.0,
              ),
              Text(
                'Configuracion',
                style: TextStyle(fontSize: 30.0),
              ),
            ],
          ),
        )
      ],
    );
  }
}
