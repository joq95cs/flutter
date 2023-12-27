class PeliculaRecibida {
  int id;
  String nombre;
  String estudio;
  String genero;
  int agno;

  PeliculaRecibida(this.id, this.nombre, this.estudio, this.genero, this.agno);

  factory PeliculaRecibida.fromJson(Map<String, dynamic> json) {
    return PeliculaRecibida(
      json['id'],
      json['nombre'],
      json['estudio'],
      json['genero'],
      json['agno'],
    );
  }
}
