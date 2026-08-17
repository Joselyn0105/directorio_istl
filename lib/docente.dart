class Docente {
  final String nombres; // final se usa cuando la variable no va a cambiar
  final String apellidos;
  final String carrera;
  final String nivelEstudios;
  String cargo;
  bool activo;
  // constructor
  Docente({
    required this.nombres,
    required this.apellidos, // required tiene que usarse cuando usa final
    required this.carrera,
    required this.nivelEstudios,
    this.cargo = "por definir",
    this.activo = true,
  });
}
