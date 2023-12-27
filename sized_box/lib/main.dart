import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Cajas(),
    );
  }
}

class Cajas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 100,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 25,
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 50,
            child: Container(
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
