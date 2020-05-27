import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:superapp/widgets/card_acceso.dart';
import 'package:superapp/widgets/iconos_personalizados.dart';
import 'package:superapp/widgets/social_icons.dart';

class Acceso extends StatefulWidget {
  static final String nombreRuta = 'acceso';

  @override
  _AccesoState createState() => _AccesoState();
}

class _AccesoState extends State<Acceso> {
  bool _isSeleccionado = false;

  void _radio() {
    setState(() {
      _isSeleccionado = !_isSeleccionado;
    });
  }

  Widget radioButtom(bool isSeleccionado) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(width: 2.0, color: Colors.black)),
        child: isSeleccionado
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              )
            : Container(),
      );

  Widget lineaHorizontal() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: 120.0,
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    ScreenUtil screenUtil = ScreenUtil();
    screenUtil.setWidth(750.0);
    screenUtil.setHeight(1334.0);
    screenUtil.allowFontScaling = true;

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
                    children: <Widget>[
                      Image.asset(
                        'assets/images/appLogo.png',
                        width: screenUtil.setWidth(110),
                        height: screenUtil.setHeight(110),
                      ),
                      Text(
                        'SUPER',
                        style: TextStyle(
                          fontFamily: 'Poppins-Bold',
                          fontSize: screenUtil.setSp(54),
                          letterSpacing: .6,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenUtil.setHeight(350),
                  ),
                  CardAcceso(screenUtil: screenUtil),
                  SizedBox(height: screenUtil.setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(width: 12.0),
                          GestureDetector(
                            onTap: _radio,
                            child: radioButtom(_isSeleccionado),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            'Recuerdame',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins-Medium',
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        child: Container(
                          width: screenUtil.setWidth(330),
                          height: screenUtil.setHeight(150),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff17ead9), Color(0xff6078ea)],
                            ),
                            borderRadius: BorderRadius.circular(6.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff6078ea).withOpacity(.3),
                                offset: Offset(0.0, 8.0),
                                blurRadius: 8.0,
                              )
                            ],
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  'ACCEDER',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins-Bold',
                                    fontSize: 18,
                                    letterSpacing: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screenUtil.setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          width: screenUtil.setWidth(120.0),
                          height: screenUtil.setHeight(1.0),
                          color: Colors.black26.withOpacity(.2),
                        ),
                      ),
                      Text(
                        'Otras vias de acceso',
                        style: TextStyle(fontSize: 16.0, fontFamily: 'Poppins-Medium'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          width: screenUtil.setWidth(120.0),
                          height: screenUtil.setHeight(1.0),
                          color: Colors.black26.withOpacity(.2),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenUtil.setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocialIcon(
                        colores: [
                          Color(0xff102397),
                          Color(0xff187adf),
                          Color(0xff00eaf8),
                        ],
                        dataIcono: IconosPersonalizados.facebook,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        colores: [
                          Color(0xffff4f38),
                          Color(0xffff355d),
                        ],
                        dataIcono: IconosPersonalizados.google,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        colores: [
                          Color(0xff17ead9),
                          Color(0xff6078ea),
                        ],
                        dataIcono: IconosPersonalizados.twitter,
                        onPressed: () {},
                      ),
                      SocialIcon(
                        colores: [
                          Color(0xff00c6fb),
                          Color(0xff005bea),
                        ],
                        dataIcono: IconosPersonalizados.linkedIn,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenUtil.setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Nuevo usuario? ',
                        style: TextStyle(fontFamily: 'Poppins-Medium'),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Regístrame',
                          style: TextStyle(color: Color(0xff5d74e3), fontFamily: 'Poppins-Bold'),
                        ),
                      )
                    ],
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
