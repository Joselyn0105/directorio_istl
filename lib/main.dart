import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
          children: [
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Isrrael Zurita"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Angel Novillo"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing. Cecilia Naula"),
              subtitle: Text("Desarrollo de Aplicaciones Web"),
              trailing: Icon(
                Icons.star,
                color: const Color.fromARGB(255, 162, 210, 240),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
