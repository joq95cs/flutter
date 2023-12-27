import 'package:flutter/material.dart';
import 'package:widgets/main_widgets/my_home_page.dart';

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
          primaryColor: Color(0xFF26c6da),
          accentColor: Color(0xFFa5d6a7),
          fontFamily: 'Georgia',
          textTheme: TextTheme(
              headline1: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
              bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
      //home: MainHome(),
      home: MyHomePage(title: 'Widgets'),
    );
  }
}
