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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ButtonBar(children: [
        FlatButton(
            color: Colors.green,
            padding: EdgeInsets.all(15),
            splashColor: Colors.black,
            onPressed: () {},
            child: Text('Flat Button')),
        IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit)),
        OutlineButton(
          highlightColor: Colors.red,
          highlightedBorderColor: Colors.orange,
          onPressed: () {},
          child: Text('Outline Button'),
        ),
        RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: EdgeInsets.all(0.0),
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.red, Colors.green],
              )),
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                'Greadient Button',
                style: TextStyle(fontSize: 20),
              ),
            )),
        RaisedButton(
            onPressed: () {},
            child: const Text('Raised Basic', style: TextStyle(fontSize: 20)))
      ])),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: Icon(Icons.access_time_outlined)),
    );
  }
}
