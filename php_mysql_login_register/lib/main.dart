import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/home': (context) => Home(),
      },
      title: 'Formulario',
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();
  Future _registrar(BuildContext context) async {
    var url = 'http://localhost/curso_php/flutter/login_register/register.php';
    var response = await http.post(Uri.parse(url), body: {
      'username': _user.text,
      'password': _pass.text,
    });
    var data = json.decode(response.body);

    if (data.toString() == 'error') {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Center(
              child: Text(
                'El usuario ya existe',
                style: _getEstilo(16),
              ),
            ),
            height: 25,
            color: Colors.red,
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
                'Registro exitoso',
                style: _getEstilo(16),
              ),
            ),
            height: 25,
            color: Colors.blue,
          );
        },
      );
    }
  }

  Future _iniciarSesion(BuildContext context) async {
    var url = 'http://localhost/curso_php/flutter/login_register/login.php';
    var response = await http.post(Uri.parse(url), body: {
      'username': _user.text,
      'password': _pass.text,
    });
    var data = json.decode(response.body);
    if (data.toString() == 'error') {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Center(
              child: Text(
                'Error de usuario o contraseña',
                style: _getEstilo(16),
              ),
            ),
            height: 25,
            color: Colors.red,
          );
        },
      );
    } else {
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 250,
          color: Colors.green,
          child: Column(
            children: [
              _getEtiqueta('FORMULARIO', 20),
              _getCampo(15, _user),
              _getCampo(15, _pass),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _getBoton('Registrar', 15, 0, context),
                  _getBoton('Iniciar Sesión', 15, 1, context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _getCampo(double ms, TextEditingController c) {
    return Container(
      margin: EdgeInsets.only(top: ms),
      width: 300,
      color: Colors.green[300],
      child: TextField(
        controller: c,
        style: _getEstilo(16),
      ),
    );
  }

  TextButton _getBoton(String texto, double ms, int f, BuildContext context) {
    return TextButton(
      child: Container(
        margin: EdgeInsets.only(top: ms),
        child: Text(
          texto,
          style: _getEstilo(16),
        ),
      ),
      onPressed: () {
        setState(
          () {
            if (f == 0) {
              _registrar(context);
            } else {
              _iniciarSesion(context);
            }
          },
        );
      },
    );
  }

  Container _getEtiqueta(String texto, double ms) {
    return Container(
      margin: EdgeInsets.only(top: ms),
      child: Text(
        texto,
        style: _getEstilo(18),
      ),
    );
  }

  TextStyle _getEstilo(double t) {
    return TextStyle(
      fontSize: t,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    );
  }
}
