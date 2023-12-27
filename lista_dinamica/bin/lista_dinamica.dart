import 'package:lista_dinamica/lista_dinamica.dart' as lista_dinamica;

void main(List<String> arguments) {
  List args = ['hola', 99, Pelicula('Black Widow', 2021)];

  Pelicula p = args[2];

  print(p.nombre);
}

class Pelicula {
  String nombre;
  int agno;
  Pelicula(this.nombre, this.agno);
}
