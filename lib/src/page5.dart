import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  final opciones = ['five'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diseño Industrial'),
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
          Text('Diseño Industrial',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Divider(),
          Text(
              'Si hablamos de las carreras del futuro hablamos del Diseño Industrial, tanto así que cada vez hay más universidades que la incluyen en sus programas o pensum de estudios. Un Diseñador Industrial se dedica a diseñar productos industriales o seriados que se enmarcan en dos grandes categorías: la de los bienes de consumo y la de los bienes de capital.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14)),
          Divider(),
          Text(
              '• Quienes estudian esta interesante carrera del futuro pueden ejercer en industrias electrónicas, automotrices, manufactureras, jugueteras, de joyería o calzado.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 14)),
          Divider(),
          Text('Universidades',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Text('• 1. Universidad Autónoma de Aguascalientes',
              textAlign: TextAlign.justify, style: TextStyle(fontSize: 14)),
          Text('2. Universidad Autónoma de Ciudad Juárez',
              textAlign: TextAlign.justify, style: TextStyle(fontSize: 14)),
          Text('• 3. UNITEC Universidad Tecnológica de México',
              textAlign: TextAlign.justify, style: TextStyle(fontSize: 14)),
          Divider(),
          Image.network(
              "https://www.senati.edu.pe/sites/default/files/2017/carrera/09/diseno-industrial-senati1800-x-1190.jpg"),
        ],
      );
    }).toList();
  }
}
