// ignore_for_file: unnecessary_new

import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => Estado();
}

class Estado extends State<Home> {
  Color c = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 300,
            child: Recuadro(c),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                cambiarColor();
              });
            },
            child: Text('COLOR AL AZAR'),
          ),
        ],
      )),
    );
  }

  void cambiarColor() {
    int r = new Random().nextInt(255);
    int g = new Random().nextInt(255);
    int b = new Random().nextInt(255);

    c = Color.fromRGBO(r, g, b, 1);
  }
}

class Recuadro extends StatelessWidget {
  Color c;
  Recuadro(this.c);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: c,
    );
  }
}
