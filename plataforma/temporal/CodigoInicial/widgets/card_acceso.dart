import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardAcceso extends StatelessWidget {
  const CardAcceso({
    @required this.screenUtil,
  });

  final ScreenUtil screenUtil;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenUtil.setHeight(600),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, 15.0),
            blurRadius: 15.0,
          ),
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0.0, -10.0),
            blurRadius: 10.0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Acceder',
              style: TextStyle(
                fontSize: screenUtil.setSp(55),
                fontFamily: 'Poppins-Bold',
                letterSpacing: .6,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: screenUtil.setHeight(30),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Usuario',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  )),
            ),
            SizedBox(
              height: screenUtil.setHeight(30),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Contraseña',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  )),
            ),
            SizedBox(
              height: screenUtil.setHeight(35),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  'Olvidé mi clave?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontFamily: 'Poppins-Medium',
                    fontSize: screenUtil.setSp(40),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
