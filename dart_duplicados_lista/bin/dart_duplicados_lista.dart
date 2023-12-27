import 'dart:developer';

void main(List<String> arguments) {
  List<String> frutas = [
    'MANGO',
    'FRESA',
    'MANGO',
    'MANGO',
    'DURAZNO',
    'JICAMA',
    'NARANJA',
    'FRESA',
    'PEPINO',
    'MANGO',
    'PEPINO',
    'JICAMA',
    'KIWI',
    'NARANJA',
  ];

  List<String> frutasDiferentes = [];

  frutas.forEach((String fruta) {
    if (!frutasDiferentes.contains(fruta)) {
      frutasDiferentes.add(fruta);
    }
  });

  frutasDiferentes.forEach((element) {
    print(element);
  });
}
