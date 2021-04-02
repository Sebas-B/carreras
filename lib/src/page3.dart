import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  final opciones = ['three'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingeniería Ambiental'),
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
          Text('Ingeniería Ambiental',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Divider(),
          Text(
              'Es imposible hablar de las carreras del futuro sin mencionar a la Ingeniería Ambiental. Esto se debe a que su demanda va en ascenso pues los problemas ambientales siguen aflorando. Los Ingenieros Ambientales se enfocan en el estudio de las problemáticas del medio ambiente con el fin de definir su impacto económico, social y ecológico. También se encargan de controlar y prevenir el deterioro de los llamados recursos naturales que generan los proyectos industriales en la mayoría de los casos.',
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
          Text('• 1. Universidad Autónoma de Aguascalientes',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('2. Universidad Autónoma de Campeche',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('• 3. Universidad Autónoma del Carmen',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Divider(),
          Image.network(
              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.uniscopio.com%2Fwp-content%2Fuploads%2F2019%2F07%2FGrado_en_Ingenieria_Ambiental.jpg&f=1&nofb=1"),
        ],
      );
    }).toList();
  }
}
