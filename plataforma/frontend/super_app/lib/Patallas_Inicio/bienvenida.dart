import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:superapp/Patallas_Inicio/acceder.dart';
import 'package:superapp/Patallas_Inicio/home.dart';
import 'package:superapp/Patallas_Inicio/registro.dart';
import 'package:superapp/widgets/constants.dart';

class Bienvenida extends StatefulWidget {
  Bienvenida({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BienvenidaState createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  LocalAuthentication auth = LocalAuthentication();
  bool _canCheckBiometric;
  List<BiometricType> _availableBiometric;
  String authorized = "Not authorized";

// verificar el bioemtrico y el sensor se puede usar o no

  Future<void> _checkBiometric() async {
    bool canCheckBiometric;
    try {
      canCheckBiometric = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      _canCheckBiometric = canCheckBiometric;
    });
  }

//funcion para ver si el biometrico esta disponible dentro del dispositivo
 Future<bool>authenticateIsAvailable()async{}
 
 
  Future<void> _getAvailableBiometric() async {  

    List<BiometricType> avaliableBiometric;
    try {
      avaliableBiometric = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _availableBiometric = avaliableBiometric;
    });
  }

//funcion que abre dialogo de autenticacion y chequea si esta autenticado o no.

  Future<void> _authenticate() async {
    bool authenticated = true;
    try {
      authenticated = await auth.authenticate(
        biometricOnly: true,
        localizedReason: "Scanear Huella",
        useErrorDialogs: true,
        stickyAuth: false,
      );
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      authorized =
          authenticated ? "Autorizacion Consedida" : "Fallo Autorizacion";
      if (authenticated) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home()));
      }
    });
  }

  @override
  void initState() {
    _checkBiometric();
    _getAvailableBiometric();
  }

  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Acceder()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color(0xff1B8A52).withAlpha(100),
                  offset: Offset(2, 4),
                  blurRadius: 8,
                  spreadRadius: 2)
            ],
            color: Colors.white),
        child: Text(
          'Acceso',
          style: TextStyle(fontSize: 20, color: Color(0xff2AA467)),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Registro()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Text(
          'Registrate ahora',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  Widget _finger() {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/icons/fingerprint.png',
            width: 100.0,
            color: Colors.white,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'FingerPrint Auth',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _authF() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff2AA467),
        ),
        onPressed: _authenticate,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          child: Text(
            'Autenticate',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Container(
      child: Image(
        image: AssetImage('assets/images/appLogo.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff49C989), Color(0xff1B8A52)]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _title(),
              SizedBox(
                height: 80,
              ),
              _submitButton(),
              SizedBox(
                height: 20,
              ),
              _signUpButton(),
              SizedBox(
                height: 30,
              ),
              _finger(),
              SizedBox(
                height: 15,
              ),
              _authF(),
            ],
          ),
        ),
      ),
    );
  }
}
