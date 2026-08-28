import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'docente.dart';

class DirectorioScreen extends StatefulWidget {
  const DirectorioScreen({super.key});
  @override
  State<DirectorioScreen> createState() => _DirectorioScreenState();
}

class _DirectorioScreenState extends State<DirectorioScreen> {
  late Box<Docente> _caja;

  @override
  void initState() {
    super.initState();
    _caja = Hive.box<Docente>('docentes');
    _sembrarDatos(); // datos iniciales solo la primera vez
  }

  void _sembrarDatos() {
    if (_caja.isEmpty) {
      _caja.addAll([
        Docente(
          nombres: 'Israel',
          apellidos: 'Zurita',
          nivelEstudios: 'Ing.',
          carrera: 'DAW',
        ),
        Docente(
          nombres: 'Angel',
          apellidos: 'Novillo',
          nivelEstudios: 'Msg.',
          carrera: 'DAW',
        ),
        Docente(
          nombres: 'Cecilia',
          apellidos: 'Naula',
          nivelEstudios: 'Msg.',
          carrera: 'DAW',
        ),
        Docente(
          nombres: 'Pablo ',
          apellidos: 'Reyes',
          nivelEstudios: 'Ing.',
          carrera: 'DAW',
        ),
      ]);
    }
  }

  void _agregarDocente() {
    // CREATE
    _caja.add(
      Docente(
        nombres: 'Nuevo',
        apellidos: 'Docente',
        nivelEstudios: 'Ing.',
        carrera: 'DAW',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Directorio IST La Troncal'),
        backgroundColor: const Color.fromARGB(255, 22, 90, 227),
        foregroundColor: const Color.fromARGB(255, 236, 198, 46),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _agregarDocente,
        child: const Icon(Icons.add),
      ),
      body: ValueListenableBuilder(
        // READ reactivo
        valueListenable: _caja.listenable(),
        builder: (context, Box<Docente> caja, _) {
          if (caja.isEmpty) {
            return const Center(child: Text('No hay docentes.'));
          }
          return ListView.separated(
            padding: const EdgeInsets.all(18),
            itemCount: caja.length,
            separatorBuilder: (_, __) => const Divider(),
            itemBuilder: (context, index) {
              final d = caja.getAt(index)!;
              return ListTile(
                leading: const Icon(Icons.person, color: Colors.blue),
                title: Text(
                  '${d.nivelEstudios} ${d.nombres} '
                  '${d.apellidos}',
                ),
                subtitle: Text(d.carrera),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      // UPDATE
                      icon: Icon(
                        d.esFavorito ? Icons.star : Icons.star_border,
                        color: d.esFavorito ? Colors.amber : Colors.grey,
                      ),
                      onPressed: () {
                        d.esFavorito = !d.esFavorito;
                        d.save();
                      },
                    ),
                    IconButton(
                      // DELETE
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => d.delete(),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
