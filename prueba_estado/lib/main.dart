import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? llave}) : super(key: llave);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prueba de estado',
      home: const Home(titulo: 'Prueba de estado'),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? llave, required this.titulo}) : super(key: llave);
  final String titulo;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color c = Colors.green;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.titulo),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange,
                    width: 1,
                  ),
                ),
                child: TextButton(
                  child: Text('Cambiar color'),
                  onPressed: () {
                    setState(() {
                      if (c == Colors.green) {
                        c = Colors.purple;
                      } else {
                        c = Colors.green;
                      }
                    });
                  },
                ),
              ),
              Container(
                width: 250,
                height: 100,
                color: c,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
