import 'dart:html';

import 'package:carreras/src/models/RegistroCarreraModel.dart';
import 'package:carreras/src/providers/registro_provider.dart';
import 'package:flutter/material.dart';
import 'package:carreras/src/utils/utils.dart' as utils;

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  final formKey = GlobalKey<FormState>();
  final registroProvider = new RegistroProvider();

  RegistroCarrera registro = new RegistroCarrera();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro Carrera'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                _crearNombre(),
                _crearApellido(),
                _crearCorreoElectrnico(),
                _crearCelular(),
                _crearCalleYNumero(),
                _crearColoniaOPoblacion(),
                _crearciudad(),
                _crearCarreraQueLeInteresa(),
                _crearBoton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _crearNombre() {
    return TextFormField(
      initialValue: registro.nombre,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Nombre'),
      onSaved: (value) => registro.nombre = value,
      validator: (value) {
        if (value.length < 3) {
          return 'Ingrese el nombre';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearApellido() {
    return TextFormField(
      initialValue: registro.apellidos,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Apellidos'),
      onSaved: (value) => registro.apellidos = value,
      validator: (value) {
        if (value.length < 3) {
          return 'Ingrese el apellido';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearCorreoElectrnico() {
    return TextFormField(
      initialValue: registro.correoElectrnico,
      decoration: InputDecoration(labelText: 'Correo Electrónico'),
      onSaved: (value) => registro.correoElectrnico = value,
      validator: (value) {
        if (value.length < 3) {
          return 'Ingrese el correo electronico';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearCelular() {
    return TextFormField(
      initialValue: registro.celular.toString(),
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(labelText: 'Celular'),
      onSaved: (value) => registro.celular = int.parse(value),
      validator: (value) {
        if (utils.isNumeric(value)) {
          return null;
        } else {
          return 'Sólo números';
        }
      },
    );
  }

  Widget _crearCalleYNumero() {
    return TextFormField(
      initialValue: registro.calleYNumero,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Calle y numero'),
      onSaved: (value) => registro.calleYNumero = value,
      validator: (value) {
        if (value.length < 3) {
          return 'Ingrese su direccion!';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearColoniaOPoblacion() {
    return TextFormField(
      initialValue: registro.coloniaOPoblacion,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Colonia o Poblacion'),
      onSaved: (value) => registro.coloniaOPoblacion = value,
      validator: (value) {
        if (value.length < 3) {
          return 'Ingrese la colonia';
        } else {
          return null;
        }
      },
    );
  }

  Widget _crearciudad() {
    return TextFormField(
      initialValue: registro.ciudad,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(labelText: 'Ciudad'),
      onSaved: (value) => registro.ciudad = value,
      validator: (value) {
        if (value.length < 3) {
          return 'Ingrese la ciudad';
        } else {
          return null;
        }
      },
    );
  }

  var _lista = [
    'Ingeniería en Robótica',
    'Astrofísica',
    'Ingeniería Ambiental',
    'Ingeniería en Geofísica',
    'Diseño Industrial',
    'Ingeniería Agrónoma',
    'Ingeniería en Aeronáutica',
    'Biotecnología',
    'Biotecnología',
    'Ingeniería Genética'
  ];

  var _vista = 'Selecciona una opcion';

  Widget _crearCarreraQueLeInteresa() {
    return DropdownButton(
      items: _lista.map((String a) {
        return DropdownMenuItem(value: a, child: Text(a));
      }).toList(),
      onChanged: (_value) => {
        setState(() {
          _vista = _value;
          registro.carreraQueLeInteresa = _value;
        })
      },
      hint: Text(_vista),
    );
  }

  Widget _crearBoton() {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Colors.deepPurple,
      textColor: Colors.white,
      label: Text('Guardar'),
      icon: Icon(Icons.save),
      onPressed: /*(_guardando) ? null :*/ _submit,
    );
  }

  void _submit() async {
    if (!formKey.currentState.validate()) return;

    formKey.currentState.save();

    print(registro.nombre);
    print(registro.apellidos);

    registroProvider.crearRegistro(registro);

/*
    setState(() {_guardando = true; });

    if ( producto.id == null ) {
      productoProvider.crearProducto(producto);
    } else {
      productoProvider.editarProducto(producto);
    }


    // setState(() {_guardando = false; });
    mostrarSnackbar('Registro guardado');

*/
  }
}
