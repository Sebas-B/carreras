import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final opciones = ['two'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Astrofísica'),
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
          Text('Astrofísica',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Divider(),
          Text(
              'Esta es una de esas carreras del futuro que sigue abriendo debates a nivel mundial puesto que cada vez cobra más relevancia. Quienes estudian Astrofísica se preparan para explicar los fenómenos del universo mediante los basamentos de la Física y otras ciencias importantes. En esencia se busca determinar cuál es el origen, la formación, y por supuesto, la evolución de las estrellas, las galaxias y los planetas.',
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
              '• Si te interesa estudiar una de las carreras del futuro más retadoras del mercado debes tener claro que puedes ejercer en el campo de la docencia o en los observatorios.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16)),
          Divider(),
          Text('Universidades',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5)),
          Text('• 1. Universidad Internacional de Valencia VIU',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('2. Universidad Autónoma de Nuevo León',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('• 3. Universidad Nacional Autónoma de México',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Divider(),
          Image.network(
              "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fmisistemasolar.com%2Fwp-content%2Fuploads%2F2017%2F12%2Fastrofisica-10.jpg&f=1&nofb=1"),
        ],
      );
    }).toList();
  }
}
