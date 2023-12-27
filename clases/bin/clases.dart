import 'modelos/Producto.dart';

void main(List<String> arguments) {
  Producto p = new Producto('Refresco', 'Engordante', 15);
  /*p.nombre = "Refresco";
  p.descripcion = "Engordante refresco";
  p.precio = 15;*/

  List<Producto> productos = [
    new Producto('Chiles', 'Picantes', 9),
    new Producto('Chocolates', 'Dulces', 15),
    new Producto('Papitas', 'Tuberculos', 20)
  ];

  for (Producto p in productos) {
    print(
        'Nombre: ${p.nombre}\nDescripción: ${p.descripcion}\nPrecio: ${p.precio}');
  }
}
