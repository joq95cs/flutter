import 'package:flutter/material.dart';
import 'package:navegar/second_page.dart';

import 'my_arguments.dart';

class FirstPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 1'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Ir a página 2'),
            onPressed: () {
              Navigator.pushNamed(context, SecondPage.routeName,
                  arguments: MyArguments('Joqsan', 26, 1995, 'Hombre'));
            }),
      ),
    );
  }
}
