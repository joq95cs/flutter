import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  Color base = Colors.green;
  List<Color> colores = [
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.purple,
  ];
  void accion1() {
    setState(() {
      if (base == Colors.green) {
        base = Colors.yellow;
        colores[0] = Colors.purple;
        colores[1] = Colors.green;
        colores[2] = Colors.yellow;
        colores[3] = Colors.orange;
        colores[4] = Colors.red;
        colores[5] = Colors.blue;
      } else if (base == Colors.yellow) {
        base = Colors.orange;
        colores[0] = Colors.blue;
        colores[1] = Colors.purple;
        colores[2] = Colors.green;
        colores[3] = Colors.yellow;
        colores[4] = Colors.orange;
        colores[5] = Colors.red;
      } else if (base == Colors.orange) {
        base = Colors.red;
        colores[0] = Colors.red;
        colores[1] = Colors.blue;
        colores[2] = Colors.purple;
        colores[3] = Colors.green;
        colores[4] = Colors.yellow;
        colores[5] = Colors.orange;
      } else if (base == Colors.red) {
        base = Colors.blue;
        colores[0] = Colors.orange;
        colores[1] = Colors.red;
        colores[2] = Colors.blue;
        colores[3] = Colors.purple;
        colores[4] = Colors.green;
        colores[5] = Colors.yellow;
      } else if (base == Colors.blue) {
        base = Colors.purple;
        colores[0] = Colors.yellow;
        colores[1] = Colors.orange;
        colores[2] = Colors.red;
        colores[3] = Colors.blue;
        colores[4] = Colors.purple;
        colores[5] = Colors.green;
      } else if (base == Colors.purple) {
        base = Colors.green;
        colores[0] = Colors.green;
        colores[1] = Colors.yellow;
        colores[2] = Colors.orange;
        colores[3] = Colors.red;
        colores[4] = Colors.blue;
        colores[5] = Colors.purple;
      }
    });
  }

  void accion2() {
    setState(() {
      if (base == Colors.green) {
        base = Colors.purple;
        colores[0] = Colors.yellow;
        colores[1] = Colors.orange;
        colores[2] = Colors.red;
        colores[3] = Colors.blue;
        colores[4] = Colors.purple;
        colores[5] = Colors.green;
      } else if (base == Colors.purple) {
        base = Colors.blue;
        colores[0] = Colors.orange;
        colores[1] = Colors.red;
        colores[2] = Colors.blue;
        colores[3] = Colors.purple;
        colores[4] = Colors.green;
        colores[5] = Colors.yellow;
      } else if (base == Colors.blue) {
        base = Colors.red;
        colores[0] = Colors.red;
        colores[1] = Colors.blue;
        colores[2] = Colors.purple;
        colores[3] = Colors.green;
        colores[4] = Colors.yellow;
        colores[5] = Colors.orange;
      } else if (base == Colors.red) {
        base = Colors.orange;
        colores[0] = Colors.blue;
        colores[1] = Colors.purple;
        colores[2] = Colors.green;
        colores[3] = Colors.yellow;
        colores[4] = Colors.orange;
        colores[5] = Colors.red;
      } else if (base == Colors.orange) {
        base = Colors.yellow;
        colores[0] = Colors.purple;
        colores[1] = Colors.green;
        colores[2] = Colors.yellow;
        colores[3] = Colors.orange;
        colores[4] = Colors.red;
        colores[5] = Colors.blue;
      } else if (base == Colors.yellow) {
        base = Colors.green;
        colores[0] = Colors.green;
        colores[1] = Colors.yellow;
        colores[2] = Colors.orange;
        colores[3] = Colors.red;
        colores[4] = Colors.blue;
        colores[5] = Colors.purple;
      }
    });
  }

  TextButton getBtn1(String texto) {
    return TextButton(
      onPressed: accion2,
      child: Text(texto),
    );
  }

  TextButton getBtn2(String texto) {
    return TextButton(
      onPressed: accion1,
      child: Text(texto),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tarjetas de colores'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Tarjeta(colores[0]),
                  Tarjeta(colores[1]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Tarjeta(colores[5]),
                  Tarjeta(colores[2]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Tarjeta(colores[4]),
                  Tarjeta(colores[3]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getBtn1('IZQUIERDA'),
                  getBtn2('DERECHA'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tarjeta extends StatelessWidget {
  Color c;
  Tarjeta(this.c);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: c,
      child: SizedBox(
        width: 175,
        height: 175,
      ),
    );
  }
}
