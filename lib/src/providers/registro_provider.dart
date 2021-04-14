import 'dart:convert';
import 'dart:io';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;
import 'package:carreras/src/models/RegistroCarreraModel.dart';

class RegistroProvider {
  final String _url = 'https://carreras-55d01-default-rtdb.firebaseio.com';

  Future<bool> crearRegistro(RegistroCarrera registro) async {
    final url = Uri.parse('$_url/RegistroCarrera.json');

    final resp = await http.post(url, body: registroCarreraToJson(registro));

    final decodedData = json.decode(resp.body);

    print(decodedData);

    return true;
  }

  Future<List<RegistroCarrera>> cargarRegistros(
      RegistroCarrera registro) async {
    final url = Uri.parse('$_url/productos.json');
    final resp = await http.get(url);

    final Map<String, dynamic> decodedData = json.decode(resp.body);
    final List<RegistroCarrera> registros = new List();

    if (decodedData == null) return [];

    decodedData.forEach((id, regis) {
      final regisTemp = RegistroCarrera.fromJson(regis);
      regisTemp.id = id;

      registros.add(regisTemp);
    });

    // print( productos[0].id );

    return registros;
  }
}
