import 'package:directorio_istl/docente.dart';
import 'package:flutter/material.dart';
import 'docente.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  Docente docente1 = Docente(
    nombres: "Angel",
    apellidos: "Novillo",
    carrera: "DAW",
    nivelEstudios: "Mgtr",
  );

  List<Docente> listaDocenete = [
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
  ];
  int indiceDocente = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Directorio IST La Troncal"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.amber,
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text(
                "${docente1.nivelEstudios} ${docente1.nombres} ${docente1.apellidos}",
              ),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text(
                "${listaDocenete[indiceDocente].nivelEstudios} ${listaDocenete[indiceDocente].nombres} ${listaDocenete[indiceDocente].apellidos}",
              ),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Isrrael Zurita"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Angel Novillo"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Isrrael Zurita"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Angel Novillo"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
