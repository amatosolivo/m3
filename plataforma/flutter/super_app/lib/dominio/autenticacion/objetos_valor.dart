import 'package:dartz/dartz.dart';
import 'package:superapp/dominio/nucleo/fallos.dart';
import 'package:superapp/dominio/nucleo/objetos_valor.dart';
import 'package:superapp/dominio/nucleo/validadores_datos.dart';

class DireccionCorreo extends ObjetoValor<String> {
  final Either<ValorFallido<String>, String> valor;

  factory DireccionCorreo(String entrada) {
    assert(entrada != null);
    return DireccionCorreo._(validarDireccionCorreo(entrada));
  }

  const DireccionCorreo._(this.valor);
}

class Clave extends ObjetoValor<String> {
  final Either<ValorFallido<String>, String> valor;

  factory Clave(String entrada) {
    assert(entrada != null);
    return Clave._(validarClave(entrada));
  }

  const Clave._(this.valor);
}
