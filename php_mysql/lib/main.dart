import 'dart:async';
import 'package:flutter/material.dart';
import 'package:php_mysql/student.dart';

void main() {
  runApp(MyApp(Student.fetchStudent()));
}

class MyApp extends StatelessWidget {
  final Future<Student> student;

  MyApp(this.student);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PHP + MySQL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('PHP Api Rest'),
        ),
        body: Center(
          child: FutureBuilder<Student>(
            future: student,
            builder: (context, object) {
              if (object.hasData) {
                return Card(
                  child: ListTile(
                    title: Text('Alumno: ${object.data!.name}'),
                    subtitle: Text(
                        '${object.data!.name} tiene ${object.data!.age} años de edad...'),
                  ),
                );
              } else if (object.hasError) {
                return Text("Error: ${object.error}");
              }

              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
