import 'package:bloc/bloc.dart';
import 'package:superapp/contenido/MiCuenta.dart';
import 'package:superapp/contenido/MisListas.dart';
import 'package:superapp/contenido/PantallaPrincipal.dart';
import 'package:superapp/contenido/configuracion.dart';

enum NavigationEvents {
  PantallaPrincipalClickedEvent,
  MiCuentaClickedEvent,
  MisListasClickedEvent,
  MiConfiguracionClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => PantallaPrincipal();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.PantallaPrincipalClickedEvent:
        yield PantallaPrincipal();
        break;
      case NavigationEvents.MiCuentaClickedEvent:
        yield MiCuenta();
        break;
      case NavigationEvents.MisListasClickedEvent:
        yield MisListas();
        break;
      case NavigationEvents.MiConfiguracionClickedEvent:
        yield MiConfiguracion();
        break;
    }
  }
}
