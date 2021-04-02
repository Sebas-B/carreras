import 'package:flutter/material.dart';

class Page7 extends StatelessWidget {
  final opciones = ['seven'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingeniería en Aeronáutica'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView(
          //children: _crear_Items()),
          children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          Text('Ingeniería en Aeronáutica',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Divider(),
          Text(
              'Mediante esta ingeniería se aplican los avances tecnológicos al área del diseño, la construcción, fabricación y utilización de artefactos voladores o aerodinámicos, como los aviones, los misiles, las aeronaves y claramente los equipos espaciales. Un Ingeniero en Aerodinámica tiene sólidos conocimientos en Física, Matemáticas, Aviación, Deportes Aéreos, Aerodinámica, Derecho Aeronáutico y más.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Roboto', letterSpacing: 0.5)),
          Divider(),
          Text('¿Cuál es su campo de acción?: ',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5)),
          Text(
              '• Este ingeniero puede ejercer su carrera en empresas que diseñen o mantengan aeronaves, pero también puede desenvolverse como investigador o docente. A su vez puede trabajar en industrias del sector del transporte aéreo, en centros aeronáuticos, o en compañías aerocomerciales, por solo mencionar unas cuantas.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16)),
          Divider(),
          Text('Universidades',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5)),
          Text('• 1. Universidad Autónoma de Ciudad Juárez',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('2. Tecnológico de Estudios Superiores de Ecatepec',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('• 3. Instituto Politécnico Nacional',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Divider(),
          Image.network(
              "https://www.mentedidactica.com/wp-content/uploads/2018/10/ingenieria-aeronautica.jpg"),
        ],
      );
    }).toList();
  }
}
