import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      developer.log('setState()');
    });
  }

  @override
  void initState() {
    super.initState();
    developer.log('initState()');
  }

  @override
  void dispose() {
    super.dispose();
    developer.log('dispose()');
  }

  @override
  Widget build(BuildContext context) {
    developer.log('build()');
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
