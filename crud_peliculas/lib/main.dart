import 'dart:developer';

import 'package:crud_peliculas/pelicula.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? llave}) : super(key: llave);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? llave}) : super(key: llave);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _id = TextEditingController();
  TextEditingController _nombre = TextEditingController();
  TextEditingController _estudio = TextEditingController();
  TextEditingController _genero = TextEditingController();
  TextEditingController _agno = TextEditingController();
  Future _insertar(BuildContext context, Pelicula pelicula) async {
    String url = 'http://192.168.0.3/curso_php/flutter/crud/insertar.php';
    var respuesta = await http.post(
      Uri.parse(url),
      body: {
        'nombre': pelicula.nombre,
        'estudio': pelicula.estudio,
        'genero': pelicula.genero,
        'agno': pelicula.agno
      },
    );

    var datos = json.decode(respuesta.body);

    if (datos.toString() == 'correcto') {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Center(
              child: Text(
                'Registro insertado correctamente',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            height: 25,
            color: Colors.green,
          );
        },
      );
    } else {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Center(
              child: Text(
                'Error',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            height: 25,
            color: Colors.red,
          );
        },
      );
    }
  }

  Future _eliminar(BuildContext context) async {
    String url = 'http://192.168.0.3/curso_php/flutter/crud/eliminar.php';
    var respuesta = await http.post(
      Uri.parse(url),
      body: {
        'id': _id.text,
      },
    );

    var datos = json.decode(respuesta.body);

    if (datos.toString() == 'correcto') {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Center(
              child: Text(
                'Registro eliminado correctamente',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            height: 25,
            color: Colors.green,
          );
        },
      );
    } else {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Center(
              child: Text(
                'Error',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            height: 25,
            color: Colors.red,
          );
        },
      );
    }
  }

  Future<Pelicula> _buscar(BuildContext context) async {
    String url = 'http://192.168.0.3/curso_php/flutter/crud/buscar.php';
    var respuesta = await http.post(
      Uri.parse(url),
      body: {
        'id': _id.text,
      },
    );

    var datos = respuesta.body;

    if (json.decode(datos).toString() != 'incorrecto') {
      return Pelicula(
        json.decode(datos)['nombre'],
        json.decode(datos)['estudio'],
        json.decode(datos)['genero'],
        json.decode(datos)['agno'].toString(),
      );
    } else {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Center(
              child: Text(
                'Error',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            height: 25,
            color: Colors.red,
          );
        },
      );
    }
    throw Exception('Error');
  }

  Future _actualizar(BuildContext context, Pelicula pelicula) async {
    String url = 'http://192.168.0.3/curso_php/flutter/crud/actualizar.php';
    var respuesta = await http.post(
      Uri.parse(url),
      body: {
        'nombre': pelicula.nombre,
        'estudio': pelicula.estudio,
        'genero': pelicula.genero,
        'agno': pelicula.agno,
        'id': _id.text,
      },
    );

    var datos = json.decode(respuesta.body);

    if (datos.toString() == 'correcto') {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Center(
              child: Text(
                'Registro actualizado correctamente',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            height: 25,
            color: Colors.green,
          );
        },
      );
    } else {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Center(
              child: Text(
                'Error',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            height: 25,
            color: Colors.red,
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Formulario de películas'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 4.0),
              height: 380.0,
              width: 350.0,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.orange, width: 2.0, style: BorderStyle.solid),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _getEtiqueta('ID'),
                        _getCampo(_id),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _getEtiqueta('Nombre'),
                        _getCampo(_nombre),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _getEtiqueta('Estudio'),
                        _getCampo(_estudio),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _getEtiqueta('Género'),
                        _getCampo(_genero),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _getEtiqueta('Año'),
                        _getCampo(_agno),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: _getBoton(
                            'Insertar',
                            1,
                            context,
                          ),
                        ),
                        _getBoton(
                          'Eliminar',
                          2,
                          context,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: _getBoton(
                          'Buscar',
                          3,
                          context,
                        ),
                      ),
                      _getBoton(
                        'Actualizar',
                        4,
                        context,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _getBoton(String texto, int funcion, BuildContext context) {
    return Container(
      color: Colors.green,
      width: 90.0,
      height: 40.0,
      child: TextButton(
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        onPressed: () {
          setState(
            () {
              if (funcion == 1) {
                _insertar(
                  context,
                  Pelicula(
                      _nombre.text, _estudio.text, _genero.text, _agno.text),
                );
              } else if (funcion == 2) {
                _eliminar(context);
              } else if (funcion == 3) {
                Future<Pelicula> p = _buscar(context);
                p.then((pelicula) {
                  _nombre.value = TextEditingValue(
                    text: pelicula.nombre,
                    selection: TextSelection.fromPosition(
                      TextPosition(offset: pelicula.nombre.length),
                    ),
                  );
                  _estudio.value = TextEditingValue(
                    text: pelicula.estudio,
                    selection: TextSelection.fromPosition(
                      TextPosition(offset: pelicula.estudio.length),
                    ),
                  );
                  _genero.value = TextEditingValue(
                    text: pelicula.genero,
                    selection: TextSelection.fromPosition(
                      TextPosition(offset: pelicula.genero.length),
                    ),
                  );
                  _agno.value = TextEditingValue(
                    text: pelicula.agno.toString(),
                    selection: TextSelection.fromPosition(
                      TextPosition(offset: pelicula.agno.toString().length),
                    ),
                  );
                });
              } else {
                _actualizar(
                  context,
                  Pelicula(
                      _nombre.text, _estudio.text, _genero.text, _agno.text),
                );
              }
            },
          );
        },
      ),
    );
  }

  Container _getEtiqueta(String texto) {
    return Container(
      width: 100.0,
      height: 30.0,
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
    );
  }

  Container _getCampo(TextEditingController controlador) {
    return Container(
      width: 200.0,
      height: 30.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      child: TextField(
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
        controller: controlador,
      ),
    );
  }
}
