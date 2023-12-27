import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla 2')),
      body: Center(
        child: RaisedButton(
          child: Text('Regresar'),
          onPressed: () {
            Navigator.pop(context, 'Texto recibido desde la pantalla 2..');
          },
        ),
      ),
    );
  }
}
