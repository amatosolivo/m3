import 'package:flutter/material.dart';

class Paquetes extends StatelessWidget {
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
                Icons.cake,
                size: 30.0,
              ),
              Text(
                'Paquetes',
                style: TextStyle(fontSize: 30.0),
              ),
            ],
          ),
        )
      ],
    );
  }
}
