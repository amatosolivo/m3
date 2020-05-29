abstract class Entidad {
  int _id;
  DateTime fechaCreacion, fechaModificacion;
  String usuarioCreo;
  bool activo;

  int get id => _id;
}
