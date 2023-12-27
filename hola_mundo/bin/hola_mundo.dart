void main(List<String> arguments) {
  //print('Hola a todos los Sims de SimNation');

  //Comentario

  /*Otro
    comentario*/

  var numero = 25;

  var cadena = 'Saludos a todos';

  var num = 36;

  var real = 6.3;

  var texto = 'Lola la Fonda';

  var textoLargo = '''
  Saludos a todos
  los terrícolas
  de este planeta
  ''';

  var valor = true;

  //Como en js se puede usaer tipado dinámico

  /*print('Mi texto es $texto\n' +
      cadena +
      '\nOtra línea'); //Igual que en PHP, concatenación como en Java

  print(textoLargo);

  print(valor);*/

  //List<String> peliculas = new List();

  //var peliculas = new List();

  var peliculas = [];

  peliculas.add('Black Widow');

  peliculas.add('Coco');

  peliculas = ['Harry Potter', 'El señor de los anillos', 'Raya'];

  peliculas.add('Avengers');

  peliculas.remove('Harry Potter');

  /*peliculas.forEach((pelicula) {
    print(pelicula);
  });

  */

  /*print(peliculas[2]);

  print(peliculas.length);

  print(peliculas.contains('Raya'));

  */

  //Map map

  var map = {
    1: 'Primer valor',
    2: 'Segundo valor',
    3: 'Tercer valor'
  }; //Como los arreglos asociativos de PHP

  map = {};

  map[1] = 'Valor 1';
  map[2] = 'Valor 2';
  map[3] = 'Valor 3';
  map[17] = 'Valor de Soanna';
  //print(map[17]);

  var animal = 'Perro';

  dynamic persona = 'Soanna';

  final double pi = 3.1416;

  final e = 2.73;

  const String nombre = "Joqsan";

  //print(nombre);

  //Operadores aritméticos

  //+ Suma
  //- Resta
  //* Mult
  // / División

  //++ Incremeto
  //-- Decremento

  //+=2 Suma 2
  //-= Resta 2
  //*=2 Mult 2
  // /=2 Divide entre 2

  // % Modulo

  // == Igual a
  // != Diferente a
  // < Menor que
  // > Mayor que
  // >= Mayor o igual que
  // <= Menor o igual que

  //&& and
  //|| or

  var x = 52;
  var y = 23;

  if (x == 52) {
    //true

  } else {
    //else
  }

  switch (x) {
    case 1:
      //True
      break;

    case 2:
      //True
      break;

    default:
    //True
  }

  for (var i = 0; i < 5; i++) {
    //print("Hola: $i");5
  }

  for (var pelicula in peliculas) {
    //print(pelicula);
  }

  /*while (peliculas.isNotEmpty) {
    print(peliculas);
  }*/

  String mi_cadena = 'So';
  //print('Assert aplicado');
  assert(mi_cadena == 'So'); //Assert lanza un error si es null
  //print(mi_cadena);

  /*(mi_cadena == 'So Anna')
      ? print('Es So Anna')
      : print('No es So Anna'); //Condicional ternario como en PHP

  */

  print(tengoDinero(-25));
  saludo();
}

bool tengoDinero(double saldo) {
  if (saldo > 0) {
    return true;
  } else {
    return false;
  }
}

void saludo() {
  print('Hola locos');
}
