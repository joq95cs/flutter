import 'package:flutter/material.dart';

void main() {
  runApp(AppDialogos());
}

class AppDialogos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dialogos(),
    );
  }
}

class Dialogos extends StatefulWidget {
  State<Dialogos> createState() => _DialogosState();
}

class _DialogosState extends State<Dialogos> {
  String _opcion = 'Clic aquí';
  void _fijarValor(String seleccionado) {
    setState(() {
      _opcion = seleccionado;
    });
  }

  Future<void> _mostrarDialogo() async {
    switch (await showDialog<options>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          backgroundColor: Colors.grey,
          titlePadding: EdgeInsets.all(10),
          title: Text(
            'Te gusta comer',
            style: TextStyle(color: Colors.white),
          ),
          children: [
            SimpleDialogOption(
              child: Text(
                'Sí',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => Navigator.pop(context, options.YES),
            ),
            SimpleDialogOption(
              child: Text(
                'No',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => Navigator.pop(context, options.NO),
            ),
            SimpleDialogOption(
              child: Text(
                'Tal vez',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () => Navigator.pop(context, options.MAYBE),
            )
          ],
        );
      },
    )) {
      case options.YES:
        _fijarValor('Sí');
        break;

      case options.NO:
        _fijarValor('No');
        break;
      case options.MAYBE:
        _fijarValor('Tal vez');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              child: Text(_opcion),
              onPressed: _mostrarDialogo,
            ),
            ElevatedButton(
              child: Text('Alerta'),
              onPressed: () => showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('¡Alerta!'),
                      content: Text('¿Salir?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text('Sí'),
                        ),
                      ],
                    );
                  }),
            ),
            Builder(builder: (BuildContext context) {
              return ElevatedButton(
                child: Text('Snack'),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Row(
                      children: [
                        Icon(Icons.linked_camera),
                        Container(
                          width: 50,
                          height: 10,
                        ),
                        Text('Se ha encendido la cámara'),
                      ],
                    ),
                  ));
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}

enum options { YES, NO, MAYBE }
