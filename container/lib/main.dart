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
      home: Contenedor(),
    );
  }
}

class Contenedor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(top: 24, left: 16),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        padding: EdgeInsets.all(16),
        child: Icon(
          Icons.accessible_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
