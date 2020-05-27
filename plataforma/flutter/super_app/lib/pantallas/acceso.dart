import 'package:flutter/material.dart';

class Acceso extends StatelessWidget {
  static final String nombreRuta = 'acceso';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Image.asset('assets/images/loginTop.png'),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset('assets/images/loginBotom.png'),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[Image.asset('assets/images/appLogo.png')],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
