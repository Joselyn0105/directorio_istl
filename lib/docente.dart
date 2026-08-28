import 'package:hive_ce/hive.dart';

part 'docente.g.dart'; // archivo que generará build_runner

@HiveType(typeId: 0)
class Docente extends HiveObject {
  @HiveField(0)
  String nombres;

  @HiveField(1)
  String apellidos;

  @HiveField(2)
  String nivelEstudios;

  @HiveField(3)
  String carrera;

  @HiveField(4)
  bool esFavorito;

  Docente({
    required this.nombres,
    required this.apellidos,
    required this.carrera,
    required this.nivelEstudios,
    this.esFavorito = false,
  });
}
