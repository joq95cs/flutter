void main(List<String> arguments) async {
  /*print('¡Bienvenido a AutoMac!\nPor favor realice su pedido');
  print(await muestraPeticion());*/

  print('Analizando');
  print(await informarErrores());
}

//Función que simula la espera de captar la voz del usuario
Future<String> escuchadorDePeticion() => Future.delayed(
      Duration(seconds: 3),
      () => 'Big Mac',
    );

//Funcion donde muestra el resultado en pantalla
Future<String> muestraPeticion() async {
  var orden = await escuchadorDePeticion();
  return '\nSu orden es: $orden';
}

Future<int> analizarErrores() async {
  return Future.delayed(Duration(seconds: 5), () {
    return 1;
  });
}

Future<String> informarErrores() async {
  var status = await analizarErrores();

  if (status != 0) {
    return 'Hay errores';
  }

  return 'No hay errores';
}
