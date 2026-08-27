import 'package:flutter/material.dart';
import 'docente.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Docente> listaDocentes = [
    Docente(
      nombres: "Israel",
      apellidos: "Zurita",
      carrera: "DAW",
      nivelEstudios: "Ing",
    ),
    Docente(
      nombres: "Cecilia",
      apellidos: "Naula",
      carrera: "DAW",
      nivelEstudios: "Ing",
    ),
    Docente(
      nombres: "Angel",
      apellidos: "Novillo",
      carrera: "DAW",
      nivelEstudios: "Msg",
    ),
    Docente(
      nombres: "María",
      apellidos: "Delgado",
      carrera: "DAW",
      nivelEstudios: "Ing",
    ),
    Docente(
      nombres: "Aide",
      apellidos: "Macias",
      carrera: "DAW",
      nivelEstudios: "Ing",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Directorio IST La Troncal"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.amber,
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(18),
          itemCount: listaDocentes.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            return _buildDocenteTile(listaDocentes[index]);
          },
        ),
      ),
    );
  }

  Widget _buildDocenteTile(Docente docente) {
    return ListTile(
      leading: const CircleAvatar(child: Icon(Icons.person)),
      title: Text("${docente.nombres} ${docente.apellidos}"),
      subtitle: Text("${docente.carrera} - ${docente.nivelEstudios}"),
      trailing: IconButton(
        icon: Icon(
          docente.esFavorito ? Icons.star : Icons.star_border,
          color: docente.esFavorito ? Colors.amber : Colors.grey,
          size: 24,
        ),
        onPressed: () {
          setState(() {
            docente.esFavorito = !docente.esFavorito;
          });
        },
      ),
    );
  }
}
