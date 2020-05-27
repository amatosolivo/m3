import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final List<Color> colores;
  final IconData dataIcono;
  final Function onPressed;

  const SocialIcon({Key key, this.colores, this.dataIcono, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.0),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(shape: BoxShape.circle, gradient: LinearGradient(colors: colores, tileMode: TileMode.clamp)),
        child: RawMaterialButton(
          shape: CircleBorder(),
          onPressed: onPressed,
          child: Icon(dataIcono, color: Colors.white),
        ),
      ),
    );
  }
}
