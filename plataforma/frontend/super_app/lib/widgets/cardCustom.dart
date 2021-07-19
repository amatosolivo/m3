import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              child: FittedBox(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24.0),
                          child: Image(
                            fit: BoxFit.contain,
                            alignment: Alignment.topRight,
                            image: NetworkImage(
                                'https://www.curiosidario.es/wp-content/uploads/2017/10/carnes-principal-curiosidario.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
