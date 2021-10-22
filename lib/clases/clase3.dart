// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.iddocente,
    required this.nombres,
    required this.apellidos,
    required this.correo,
    required this.telefono,
    required this.dni,
    required this.idcampus,
    required this.idpadre,
    required this.idespecialidad,
    required this.codigodocente,
    required this.idgrado,
    required this.idcategoria,
  });

  String iddocente;
  String nombres;
  String apellidos;
  String correo;
  String telefono;
  String dni;
  String idcampus;
  String idpadre;
  String idespecialidad;
  String codigodocente;
  String idgrado;
  String idcategoria;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        iddocente: json["iddocente"],
        nombres: json["nombres"],
        apellidos: json["apellidos"],
        correo: json["correo"],
        telefono: json["telefono"],
        dni: json["dni"],
        idcampus: json["idcampus"],
        idpadre: json["idpadre"],
        idespecialidad: json["idespecialidad"],
        codigodocente: json["codigodocente"],
        idgrado: json["idgrado"],
        idcategoria: json["idcategoria"],
      );

  Map<String, dynamic> toJson() => {
        "iddocente": iddocente,
        "nombres": nombres,
        "apellidos": apellidos,
        "correo": correo,
        "telefono": telefono,
        "dni": dni,
        "idcampus": idcampus,
        "idpadre": idpadre,
        "idespecialidad": idespecialidad,
        "codigodocente": codigodocente,
        "idgrado": idgrado,
        "idcategoria": idcategoria,
      };
}
