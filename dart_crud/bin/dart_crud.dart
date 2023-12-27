import 'package:http/http.dart' as http;
import 'dart:convert';

void main(List<String> arguments) {
  /*CRUD.read(6).then((sim) {
    print(sim.idSim);
    print(sim.nombre);
    print(sim.apellido);
    print(sim.genero);
    print(sim.edad);
    print(sim.residencia);
  })*/

  //CRUD.create(Sim(0, 'Sansón', 'Minsk', 'Hombre', 38, 'Newcrest'));

  CRUD.delete(10);

  //CRUD.update(Sim(6, 'Patito', 'Sunlight', 'Mujer', 54, 'Oasis Springs'));
}

class CRUD {
  static Future<Sim> read(int idSim) async {
    var respuesta = await http.post(
      Uri.parse('http://localhost/curso_php/flutter/dart_crud/read.php'),
      body: {
        'id_sim': idSim.toString(),
      },
    );

    if (respuesta.statusCode == 200) {
      var objetoJson = json.decode(respuesta.body);

      return Sim.fromJson(objetoJson);
    } else {
      throw Exception();
    }
  }

  static Future<bool> create(Sim sim) async {
    bool correcto = false;
    var respuesta = await http.post(
      Uri.parse('http://localhost/curso_php/flutter/dart_crud/create.php'),
      body: {
        'nombre': sim.nombre,
        'apellido': sim.apellido,
        'genero': sim.genero,
        'edad': sim.edad.toString(),
        'residencia': sim.residencia,
      },
    );

    if (respuesta.statusCode == 200) {
      if (respuesta.body == '"correcto"') {
        correcto = true;
      }
    } else {
      throw Exception();
    }

    return correcto;
  }

  static Future<bool> delete(int idSim) async {
    bool correcto = false;

    var respuesta = await http.post(
      Uri.parse('http://localhost/curso_php/flutter/dart_crud/delete.php'),
      body: {
        'id_sim': idSim.toString(),
      },
    );

    if (respuesta.statusCode == 200) {
      if (respuesta.body == '"correcto"') {
        correcto = true;
      }
    } else {
      throw Exception();
    }

    return correcto;
  }

  static Future<bool> update(Sim sim) async {
    bool correcto = false;

    var respuesta = await http.post(
      Uri.parse('http://localhost/curso_php/flutter/dart_crud/update.php'),
      body: {
        'id_sim': sim.idSim.toString(),
        'nombre': sim.nombre,
        'apellido': sim.apellido,
        'genero': sim.genero,
        'edad': sim.edad.toString(),
        'residencia': sim.residencia,
      },
    );

    if (respuesta.statusCode == 200) {
      if (respuesta.body == '"correcto"') {
        correcto = true;
      }
    } else {
      throw Exception();
    }

    return correcto;
  }
}

class Sim {
  int idSim;
  String nombre;
  String apellido;
  String genero;
  int edad;
  String residencia;

  Sim(
    this.idSim,
    this.nombre,
    this.apellido,
    this.genero,
    this.edad,
    this.residencia,
  );

  factory Sim.fromJson(Map<String, dynamic> json) {
    return Sim(
      json['id_sim'],
      json['nombre'],
      json['apellido'],
      json['genero'],
      json['edad'],
      json['residencia'],
    );
  }
}
