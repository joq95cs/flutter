import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Nuevo extends StatefulWidget {
  const Nuevo({Key? k}) : super(key: k);

  @override
  _NuevoState createState() => _NuevoState();
}

class _NuevoState extends State<Nuevo> {
  TextEditingController _c1 = TextEditingController();
  TextEditingController _c2 = TextEditingController();
  TextEditingController _c3 = TextEditingController();
  TextEditingController _c4 = TextEditingController();
  TextEditingController _c5 = TextEditingController();
  TextEditingController _c6 = TextEditingController();

  Future<bool> registrarCliente() async {
    bool correcto = false;
    var respuesta = await http.post(
      Uri.parse(
          'http://localhost/curso_php/flutter/mini_cajero/registrar_cliente.php'),
      body: {
        'post_nombre': _c1.text,
        'post_apellido_paterno': _c2.text,
        'post_apellido_materno': _c3.text,
        'post_telefono': _c4.text,
        'post_direccion': _c5.text,
        'post_nip': _c6.text,
      },
    );

    if (respuesta.statusCode == 200) {
      if (int.parse(respuesta.body) == 1) {
        correcto = true;
      }
    } else {
      throw Exception();
    }

    return correcto;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: Text('Nombre'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                    ),
                  ),
                  width: 150,
                  child: TextField(
                    controller: _c1,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: Text('Apellido paterno'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                    ),
                  ),
                  width: 150,
                  child: TextField(
                    controller: _c2,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: Text('Apellido materno'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                    ),
                  ),
                  width: 150,
                  child: TextField(
                    controller: _c3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: Text('Teléfono'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                    ),
                  ),
                  width: 150,
                  child: TextField(
                    controller: _c4,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: Text('Dirección'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                    ),
                  ),
                  width: 150,
                  child: TextField(
                    controller: _c5,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: Text('NIP'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      style: BorderStyle.solid,
                    ),
                  ),
                  width: 150,
                  child: TextField(
                    controller: _c6,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              color: Colors.orange,
              child: TextButton(
                child: Text(
                  'REGISTRAR',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  registrarCliente().then((value) {
                    log(value.toString());
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
