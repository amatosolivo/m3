import 'package:flutter/material.dart';
import 'package:superapp/sideBar/bloc.navigation_bloc/navigation_bloc.dart';

class PantallaPrincipal extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "INICIO",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}
