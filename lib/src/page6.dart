import 'package:flutter/material.dart';

class Page6 extends StatelessWidget {
  final opciones = ['six'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingeniería Agrónoma'),
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
              'Se dedica al estudio de los factores de producción animal y vegetal, así como de su interrelación, pero también abarca sus procesos de conservación y transformación. El objetivo es reducir los costos para producir mejores alimentos y en mayor cantidad, para así cubrir las necesidades de la población mundial que crece a un ritmo acelerado. Esta es una de las carreras del futuro que genera mayores expectativas puesto que para nadie es un secreto que el consumo de alimentos sanos y saludables sigue ganando terreno a escala universal.',
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
              '• Quienes estudian este tipo de carreras del futuro pueden trabajar en compañías de producción agrícola, en instituciones agropecuarias oficiales, o incluso pueden trabajar por cuenta propia –si se animan a explotar un predio agrícola de su propiedad-',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16)),
          Divider(),
          Text('Universidades',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5)),
          Text('• 1. Universidad Autónoma de Chihuahua',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('2. Universidad Juárez del Estado de Durango',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('• 3. Universidad de Guadalajara',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Divider(),
          Image.network(
              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn-3.expansion.mx%2Fdims4%2Fdefault%2F1d7b499%2F2147483647%2Fstrip%2Ftrue%2Fcrop%2F1254x836%2B0%2B0%2Fresize%2F1200x800!%2Fquality%2F90%2F%3Furl%3Dhttps%3A%252F%252Fcdn-3.expansion.mx%252Faf%252Fbb%252Fa14c2bb740be9aac88d7cc87cb41%252Fistock-814023320.jpg&f=1&nofb=1"),
        ],
      );
    }).toList();
  }
}
