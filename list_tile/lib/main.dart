import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Lista(),
    );
  }
}

class Lista extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(children: [
          Card(child: ListTile(title: Text('Título'))),
          Card(
              child: ListTile(
                  leading: Icon(Icons.add_a_photo), title: Text('Título'))),
          Card(
              child: ListTile(
                  dense: true,
                  trailing: Icon(Icons.more_vert),
                  leading: Icon(Icons.add_a_photo),
                  title: Text('Título'))),
          Card(
              child: ListTile(
                  subtitle: Text(
                      'Título jdjdjdjdjjjjjjjjjjjjjjjjjjjjshdggdgdghjhfhfhfhfhfhfhfh'),
                  trailing: Icon(Icons.more_vert),
                  leading: Icon(Icons.add_a_photo),
                  isThreeLine: true,
                  title: Text('Título'))),
          Card(
              child: ListTile(
                  selected: true,
                  subtitle: Text(
                      'Título jdjdjdjdjjjjjjjjjjjjjjjjjjjjshdggdgdghjhfhfhfhfhfhfhfh'),
                  trailing: Icon(Icons.more_vert),
                  leading: Icon(Icons.add_a_photo),
                  isThreeLine: true,
                  title: Text('Título'))),
        ]));
  }
}
