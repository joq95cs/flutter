import 'package:flutter/material.dart';
import 'package:shopping_list/main_screens/home_screen.dart';
import 'package:shopping_list/utils/assets_images.dart';
import 'package:shopping_list/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? k}) : super(key: k);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping List',
      theme: ThemeData(
        primaryColor: Color(0xff2c2b50),
        accentColor: Color(0xff050028),
        backgroundColor: Color(0xff57547c),
        primaryColorDark: Color(0xffedecee),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? k}) : super(key: k);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
