// - Escenarios de posibles fallas
// - El usuario 'cancela' el flujo de acceder con un servicio de tercero (Google por ejemplo)
// - Hay un error en el servidor de autenticacion
// - El usuario quiere registrarse con un correo que ya existe
// - El usuario introduce una combinacion incorrecta de correo y clave
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fallo_autenticacion.freezed.dart';

@freezed
abstract class FalloAutentiacion with _$FalloAutenticacion {
  const factory FalloAutenticacion.canceladoPorUsuario() = CanceladoPorUsuario;
  const factory FalloAutenticacion.errorServidor() = ErrorServidor;
  const factory FalloAutenticacion.correoYaExiste() = CorreoYaExiste;
  const factory FalloAutenticacion.correoYClaveInvalidos() = CorreoYClaveInvalidos;
}
