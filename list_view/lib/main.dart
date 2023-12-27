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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titulos = <String>[
    'Widget 1',
    'Widget 2',
    'Widget 3',
    'Widget 4'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.width * 0.5,
        child: SafeArea(
          child: ListView.builder(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              //physics: NeverScrollableScrollPhysics(),
              reverse: true,
              itemCount: titulos.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Card(
                    color: Colors.cyan,
                    child: ListTile(
                      title: Text(titulos[index]),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
