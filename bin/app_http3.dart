import 'dart:convert' as convert;

import 'package:app_http3/clases/clase3.dart';
import 'package:http/http.dart' as http;

void main(List<String> arguments) {
  final url = Uri.parse('http://localhost:3000/docente');
  http.get(url).then((res) {
    final respuesta = welcomeFromJson(res.body);
    print('${respuesta}');
    for (int i = 0; i < respuesta.length; i++) {
      print(respuesta[i].apellidos);
    }
  });

  //////////////// EJERCICIO 3 Parte 2
  //final url = Uri.parse('http://localhost:3000/docente');
  // http.get(url).then((res) {
  //   final body = convert.jsonDecode(res.body);
  // for (int i = 0; i < body.length; i++) {
  //    print('${body[i]['nombres']}');
  //    print('${body[i]['apellidos']}');
  //  }
  //});
}
