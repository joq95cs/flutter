import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Suma(),
              Resta(),
              Multiplicacion(),
              Division(),
              Potencia(),
            ],
          ),
        ),
      ),
    );
  }
}

class Suma extends StatefulWidget {
  @override
  State<Suma> createState() => OperacionSuma();
}

class Resta extends StatefulWidget {
  @override
  State<Resta> createState() => OperacionResta();
}

class Multiplicacion extends StatefulWidget {
  @override
  State<Multiplicacion> createState() => OperacionMultiplicacion();
}

class Division extends StatefulWidget {
  @override
  State<Division> createState() => OperacionDivision();
}

class Potencia extends StatefulWidget {
  @override
  State<Potencia> createState() => OperacionPotencia();
}

class OperacionSuma extends State<Suma> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  Text texto = Text('');

  void sumar() {
    double suma = double.parse(n1.text) + double.parse(n2.text);
    texto = Text('$suma');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                child: TextField(
                  controller: n1,
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text('+'),
                ),
              ),
              Container(
                width: 50,
                child: TextField(
                  controller: n2,
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text('='),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                child: Center(
                  child: texto,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    sumar();
                  });
                },
                child: Text(
                  'SUMAR',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class OperacionResta extends State<Resta> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  Text texto = Text('');

  void restar() {
    double suma = double.parse(n1.text) - double.parse(n2.text);
    texto = Text('$suma');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                child: TextField(
                  controller: n1,
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text('-'),
                ),
              ),
              Container(
                width: 50,
                child: TextField(
                  controller: n2,
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text('='),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                child: Center(
                  child: texto,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    restar();
                  });
                },
                child: Text(
                  'RESTAR',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class OperacionMultiplicacion extends State<Multiplicacion> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  Text texto = Text('');

  void multiplicar() {
    double suma = double.parse(n1.text) * double.parse(n2.text);
    texto = Text('$suma');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                child: TextField(
                  controller: n1,
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text('*'),
                ),
              ),
              Container(
                width: 50,
                child: TextField(
                  controller: n2,
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text('='),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                child: Center(
                  child: texto,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    multiplicar();
                  });
                },
                child: Text(
                  'MULTIPLICAR',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class OperacionDivision extends State<Division> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  Text texto = Text('');

  void dividir() {
    double suma = double.parse(n1.text) / double.parse(n2.text);
    texto = Text('$suma');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                child: TextField(
                  controller: n1,
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text('÷'),
                ),
              ),
              Container(
                width: 50,
                child: TextField(
                  controller: n2,
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text('='),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                child: Center(
                  child: texto,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    dividir();
                  });
                },
                child: Text(
                  'DIVIDIR',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class OperacionPotencia extends State<Potencia> {
  TextEditingController n1 = TextEditingController();
  TextEditingController n2 = TextEditingController();
  Text texto = Text('');

  void potencia() {
    num suma = pow(double.parse(n1.text), double.parse(n2.text));
    texto = Text('$suma');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                child: TextField(
                  controller: n1,
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text('^'),
                ),
              ),
              Container(
                width: 50,
                child: TextField(
                  controller: n2,
                ),
              ),
              Container(
                width: 50,
                child: Center(
                  child: Text('='),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                  ),
                ),
                child: Center(
                  child: texto,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    potencia();
                  });
                },
                child: Text(
                  'POTENCIA',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
