import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:superapp/widgets/card_acceso.dart';

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
                          color: Colors.black,
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
                              color: Colors.black45,
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
                          color: Colors.black26.withOpacity(.9),
                        ),
                      ),
                      Text(
                        'Otras vias de acceso',
                        style: TextStyle(fontSize: 16.0, fontFamily: 'Poppins-Medium', color: Colors.black45),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Container(
                          width: screenUtil.setWidth(120.0),
                          height: screenUtil.setHeight(1.0),
                          color: Colors.black26.withOpacity(.9),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenUtil.setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ClipOval(
                        child: Material(
                            color: Color(0xff55acee),
                            child: InkWell(
                              splashColor: Colors.red,
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.white,
                                )),
                              ),
                              onTap: () {},
                            )),
                      ),
                      ClipOval(
                        child: Material(
                            color: Color(0xffdd4b39),
                            child: InkWell(
                              splashColor: Colors.red,
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Center(child: FaIcon(FontAwesomeIcons.google)),
                              ),
                              onTap: () {},
                            )),
                      ),
                      ClipOval(
                        child: Material(
                            color: Color(0xff3b5999),
                            child: InkWell(
                              splashColor: Colors.red,
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Center(child: FaIcon(FontAwesomeIcons.facebook)),
                              ),
                              onTap: () {},
                            )),
                      ),
                      ClipOval(
                        child: Material(
                            color: Color(0xffe4405f),
                            child: InkWell(
                              splashColor: Colors.red,
                              child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Center(child: FaIcon(FontAwesomeIcons.instagram)),
                              ),
                              onTap: () {},
                            )),
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
                        style: TextStyle(fontFamily: 'Poppins-Medium', color: Colors.grey),
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
