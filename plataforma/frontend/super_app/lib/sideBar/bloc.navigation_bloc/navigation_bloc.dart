import 'package:bloc/bloc.dart';
import 'package:superapp/contenido/MiCuenta.dart';
import 'package:superapp/contenido/MisListas.dart';
import 'package:superapp/contenido/PantallaPrincipal.dart';

enum NavigationEvents {
  PantallaPrincipalClickedEvent,
  MiCuentaClickedEvent,
  MisListasClickedEvent,
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
    }
  }
}
