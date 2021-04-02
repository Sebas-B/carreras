import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  final opciones = ['one'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingeniería en Robótica'),
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
          Text('Ingeniería en Robótica',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Divider(),
          Text(
              'Esta es una de las carreras del futuro más prometedoras que puedas imaginarte y por ello encabeza la lista en esta oportunidad. Combina destrezas, habilidades y conocimientos en electrónica, diseño digital, computación y robótica.',
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
              '• Su campo de acción son las empresas y las instituciones privadas o públicas vinculadas a la innovación tecnológica, o a la administración de las nuevas tecnologías. Algunas de ellas son las compañías manufactureras, las que usan redes de comunicación de datos, o las que diseñan y construyen sistemas digitales o robots. Aunque también pueden trabajar en compañías de tipo computacional, electrónicas, y hasta en centros investigativos que desarrollen nuevas tecnologías.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16)),
          Divider(),
          Text('Universidades',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5)),
          Text('• 1. Instituto en Robótica Industrial',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('2. Instituto Tecnológico y de Estudios Superiores de Monterrey',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Text('• 3. Universidad Autónoma de Aguascalientes',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Roboto', letterSpacing: 0.3)),
          Divider(),
          Image.network(
              "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.nacion.com%2Fresizer%2FYIF0-O5jKYVWF2Gj5eQmbGxCvi0%3D%2F600x0%2Fcenter%2Fmiddle%2Ffilters%3Aquality(100)%2Farc-anglerfish-arc2-prod-gruponacion.s3.amazonaws.com%2Fpublic%2FRT4N523ALBAPJAIEXR7OG5KO5I.jpg&f=1&nofb=1"),
        ],
      );
    }).toList();
  }
}
