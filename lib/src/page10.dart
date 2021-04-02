import 'package:flutter/material.dart';

class Page10 extends StatelessWidget {
  final opciones = ['ten'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingeniería Genética'),
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
          Text('Ingeniería Agrónoma',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Divider(),
          Text(
              'La Ingeniería Genética se dedica a la manipulación de los genes de un determinado organismo mediante la biotecnología. El fin es modificarlos, duplicarlos o eliminarlos de forma directa, y para ello se vale de técnicas de clonación molecular, de amplificación del ADN, de mutación, entre otras.',
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
              '• Un Ingeniero Genético tiene mucho campo laboral. Por ejemplo, puede ser empleado en industrias farmacéuticas, médicas, genéticas, o de producción animal por vía genética. Pero también está capacitado para desarrollar trabajos de Ingeniería Genética en plantas, seres vivos, vacunas y más.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16)),
          Divider(),
          Text('Universidades',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5)),
          Text('• 1. Universidad de Guadalajara',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('2. Universidad Nacional Autónoma de México',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('• 3. Universidad Autónoma de Nuevo León',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Divider(),
          Image.network(
              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ffiles.rcnradio.com%2Fpublic%2F2019-04%2Fgenetica_datos_1_ingimage_1_0.jpg&f=1&nofb=1"),
        ],
      );
    }).toList();
  }
}
