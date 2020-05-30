import 'package:dartz/dartz.dart';
import 'package:superapp/dominio/nucleo/fallos.dart';

Either<ValorFallido<String>, String> validarDireccionCorreo(String entrada) {
  if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(entrada)) {
    return right(entrada);
  } else {
    return left(ValorFallido.correoInvalido(valorFallido: entrada));
  }
}

Either<ValorFallido<String>, String> validarClave(String entrada) {
  if (entrada.length >= 6) {
    return right(entrada);
  } else {
    return left(ValorFallido.claveMuyCorta(valorFallido: entrada));
  }
}
