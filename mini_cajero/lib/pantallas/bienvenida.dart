import 'package:flutter/material.dart';

class Bienvenida extends StatelessWidget {
  const Bienvenida({Key? k}) : super(key: k);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  color: Colors.lightGreen,
                  width: 250,
                  height: 100,
                  child: TextButton(
                    child: Text(
                      'Operaciones generales',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.cyan,
                  width: 250,
                  height: 100,
                  child: TextButton(
                    child: Text(
                      'Operaciones de cliente',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  color: Colors.amber,
                  width: 250,
                  height: 100,
                  child: TextButton(
                    child: Text(
                      'Nuevo cliente',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/nuevo');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
