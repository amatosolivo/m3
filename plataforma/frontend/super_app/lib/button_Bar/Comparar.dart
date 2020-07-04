import 'package:flutter/material.dart';

class Comparar extends StatelessWidget {
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
                Icons.compare,
                size: 30.0,
              ),
              Text(
                'Comparar',
                style: TextStyle(fontSize: 30.0),
              ),
            ],
          ),
        )
      ],
    );
  }
}