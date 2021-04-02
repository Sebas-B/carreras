import 'package:flutter/material.dart';

class Page8 extends StatelessWidget {
  final opciones = ['eight'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biotecnología'),
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
          Text('Biotecnología',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Divider(),
          Text(
              'Esta es una de las carreras del futuro más competitivas del mercado porque se avoca a las aplicaciones tecnológicas en la utilización de sistemas biológicos y de organismos vivos. El propósito es crear o modificar ciertos procesos o productos para producir bienes y servicios que satisfagan necesidades especiales.',
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
              '•Estos profesionales pueden trabajar en industrias farmacéuticas, en centros de investigación de la salud, en compañías industriales, o en aquellas avocadas a la agricultura. Y otros campos laborales relacionados con esta profesión tienen que ver con plásticos biodegradables, biocombustibles, aceites vegetales, reciclaje y la genética.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16)),
          Divider(),
          Text('Universidades',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5)),
          Text('• 1. Universidad Autónoma de Aguascalientes',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('2. Universidad Autónoma de Campecheo',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('• 3. Universidad Autónoma del Estado de Morelos',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Divider(),
          Image.network(
              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmarijuanaindex.com%2Fwp-content%2Fuploads%2F2017%2F03%2FBiotechnology-1.jpg&f=1&nofb=1"),
        ],
      );
    }).toList();
  }
}
