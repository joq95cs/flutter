import 'dart:developer';
import 'dart:convert';

void main(List<String> arguments) {
  String cadena =
      '[{"id_reporte":9,"asunto":"sskks","descripcion":"emdjkd","foto":"foto.png","fecha":"2022-01-18 20:42:47","usuario":3,"categoria":4,"espacio":9,"estatus":"Pendiente"},{"id_reporte":11,"asunto":"kakaks","descripcion":"hdks","foto":"foto.png","fecha":"2022-01-18 21:12:42","usuario":3,"categoria":4,"espacio":9,"estatus":"Pendiente"},{"id_reporte":13,"asunto":"Mala noche","descripcion":"skkskjdhdhaga","foto":"foto.png","fecha":"2022-01-18 23:17:50","usuario":3,"categoria":4,"espacio":9,"estatus":"Pendiente"}]';

  var array = jsonDecode(cadena);

  print(array[2]['foto']);
}
