import 'package:flutter/material.dart';
import 'package:superapp/sideBar/bloc.navigation_bloc/navigation_bloc.dart';

class MiCuenta extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "MI CUENTA",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
