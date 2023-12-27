import 'package:http/http.dart' as http;
import 'dart:convert';

class Student {
  String name;
  int age;

  Student(this.name, this.age);

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(json['name'], json['age']);
  }

  static Future<Student> fetchStudent() async {
    final response = await http.get(
      Uri.parse('http://localhost/curso_php/flutter/api/details.php'),
    );

    if (response.statusCode == 200) {
      return Student.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data...');
    }
  }
}
