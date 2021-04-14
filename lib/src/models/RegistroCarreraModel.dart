// To parse this JSON data, do
//
//     final registroCarrera = registroCarreraFromJson(jsonString);

import 'dart:convert';

RegistroCarrera registroCarreraFromJson(String str) =>
    RegistroCarrera.fromJson(json.decode(str));

String registroCarreraToJson(RegistroCarrera data) =>
    json.encode(data.toJson());

class RegistroCarrera {
  RegistroCarrera({
    this.id,
    this.nombre = '',
    this.apellidos = '',
    this.correoElectrnico = '',
    this.celular = 0,
    this.calleYNumero = '',
    this.coloniaOPoblacion = '',
    this.ciudad = '',
    this.carreraQueLeInteresa = '',
  });

  String id;
  String nombre;
  String apellidos;
  String correoElectrnico;
  int celular;
  String calleYNumero;
  String coloniaOPoblacion;
  String ciudad;
  String carreraQueLeInteresa;

  factory RegistroCarrera.fromJson(Map<String, dynamic> json) =>
      RegistroCarrera(
        id: json["id"],
        nombre: json["Nombre"],
        apellidos: json["Apellidos"],
        correoElectrnico: json["Correo electrónico"],
        celular: json["Celular"],
        calleYNumero: json["Calle y numero"],
        coloniaOPoblacion: json["Colonia o población"],
        ciudad: json["Ciudad"],
        carreraQueLeInteresa: json["Carrera que le interesa"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Nombre": nombre,
        "Apellidos": apellidos,
        "Correo electrónico": correoElectrnico,
        "Celular": celular,
        "Calle y numero": calleYNumero,
        "Colonia o población": coloniaOPoblacion,
        "Ciudad": ciudad,
        "Carrera que le interesa": carreraQueLeInteresa,
      };
}
