import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class AuthApp extends StatefulWidget {
  @override
  _AuthAppState createState() => _AuthAppState();
}

class _AuthAppState extends State<AuthApp> {
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
    bool authenticated = false;
    try {
      authenticated = await auth.authenticate(

      );
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;
    setState(() {
      authorized =
          authenticated ? "Autorizacion Consedida" : "Fallo Autorizacion";
    });
  }

  @override
  void initState() {
    _checkBiometric();
    _getAvailableBiometric();
  }

  Widget build(BuildContext context) {
    return Container();
  }
}
