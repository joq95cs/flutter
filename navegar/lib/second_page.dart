import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navegar/my_arguments.dart';

class SecondPage extends StatelessWidget {
  static const routeName = 'secondPage';
  @override
  Widget build(BuildContext context) {
    MyArguments args =
        ModalRoute.of(context)!.settings.arguments as MyArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Nombre: ${args.name}, Edad: ${args.age} \nAño: ${args.birthYear}, Sexo: ${args.sex}'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Ir a página 1'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
