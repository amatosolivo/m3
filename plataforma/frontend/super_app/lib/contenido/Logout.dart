import 'package:flutter/material.dart';
import 'package:superapp/Patallas_Inicio/bienvenida.dart';

class Salida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bienvenida()));
                },
              ),
              Text('Salir')
            ],
          ),
        )
      ],
    );
  }
}
