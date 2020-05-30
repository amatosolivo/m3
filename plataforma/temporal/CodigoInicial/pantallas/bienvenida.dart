import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bienvenida extends StatelessWidget {
  static final String nombreRuta = 'bienvenida';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Container(
              child: Text(
                'Bienvenidos a SUPER',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins-Medium',
                  fontSize: 32.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              child: Text(
                'La lista de compra inteligente!',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  fontSize: 12.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
