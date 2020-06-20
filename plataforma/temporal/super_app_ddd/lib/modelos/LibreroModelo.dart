import 'package:superappddd/dominio/value_objects/Identity.dart';

class LibreroModelo {
  final Identity id;

  LibreroModelo({this.id});

  factory LibreroModelo.fromMap(Map<String, dynamic> map) {
    return LibreroModelo(
      id: Identity.fromString(map['Librero_Id']),
    );
  }

  toMap() {
    return {"Librero_Id": id.id};
  }
}
