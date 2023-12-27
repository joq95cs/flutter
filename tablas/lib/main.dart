import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: _getTabla(),
      ),
    ));
  }

  final List<Pelicula> _peliculas = [
    Pelicula('Avengers: Endgame', 'Marvel'),
    Pelicula('Black Widow', 'Marvel'),
    Pelicula('Cruella', 'Disney'),
    Pelicula('Demon Slayer', 'Ufotable'),
    Pelicula('Sailor Moon Crystal: Eternal', 'Toei'),
    Pelicula('Eternals', 'Marvel'),
  ];

  Widget _getTabla({bool sortAscending = true}) {
    return DataTable(
      sortColumnIndex: 0,
      sortAscending: sortAscending,
      onSelectAll: (bool? value) {},
      columns: <DataColumn>[
        DataColumn(
          label: Text('Nombre'),
          tooltip: 'Nombre de la comida',
        ),
        DataColumn(
          label: const Text('Calorias'),
          tooltip: 'Calorias',
          numeric: true,
          onSort: (int columnIndex, bool ascending) {},
        ),
      ],
      rows: _peliculas.map<DataRow>((Pelicula pelicula) {
        return DataRow(
          key: Key(pelicula.nombre) as LocalKey,
          onSelectChanged: (bool? selected) {},
          cells: <DataCell>[
            DataCell(
              Text(pelicula.nombre),
            ),
            DataCell(
              Text('${pelicula.estudio}'),
              showEditIcon: true,
              onTap: () {},
            ),
          ],
        );
      }).toList(),
    );
  }
}

class Pelicula {
  final String nombre;
  final String estudio;
  Pelicula(this.nombre, this.estudio);
}
