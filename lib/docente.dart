class Docente {
  String nombres;
  String apellidos;
  String carrera;
  String nivelEstudios;
  bool esFavorito;

  Docente({
    required this.nombres,
    required this.apellidos,
    required this.carrera,
    required this.nivelEstudios,
    this.esFavorito = false,
  });
}
