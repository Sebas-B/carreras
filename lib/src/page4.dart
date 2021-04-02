import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  final opciones = ['four'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingeniería en Geofísica'),
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
          Text('Ingeniería en Geofísica',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Divider(),
          Text(
              'Esta ingeniería se encarga del desarrollo de métodos para explorar el planeta tierra, y de las técnicas para estudiar, investigar y comprender los fenómenos físicos. Adicionalmente se avoca al descubrimiento de fuentes de recursos naturales, así como en la provisión de apoyo para el trabajo de obras de infraestructura.',
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
              '• Estos profesionales tienen muchísimas áreas de trabajo a su favor como las vinculadas a la minería, la construcción, la agricultura o la agroindustria.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16)),
          Divider(),
          Text('Universidades',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5)),
          Text('• 1. Universidad Autónoma del Carmen',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('2. Universidad de Guadalajara',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('• 3. Universidad Nacional Autónoma de México',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Divider(),
          Image.network(
              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcatedras.facet.unt.edu.ar%2Fgeofisica%2Fwp-content%2Fuploads%2Fsites%2F4%2F2014%2F02%2Fimage_00-420x225.jpg&f=1&nofb=1"),
        ],
      );
    }).toList();
  }
}
