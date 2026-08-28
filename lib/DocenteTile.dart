import 'package:flutter/material.dart';
import 'Docente.dart';

class DocenteTile extends StatefulWidget {
  final Docente docente;
  const DocenteTile({super.key, required this.docente});

  @override
  State<DocenteTile> createState() => _DocenteTileState();
}

class _DocenteTileState extends State<DocenteTile> {
  bool _esFavorito = false;

  void _alternarFavorito() {
    setState(() {
      _esFavorito = !_esFavorito;
    });
  }

  @override
  Widget build(BuildContext context) {
    final d = widget.docente;
    return ListTile(
      leading: const Icon(Icons.person, color: Colors.blue),
      title: Text('${d.nivelEstudios} ${d.nombres} ${d.apellidos}'),
      subtitle: Text(d.carrera),
      trailing: IconButton(
        icon: Icon(
          _esFavorito ? Icons.star : Icons.star_border,
          color: _esFavorito ? Colors.amber : Colors.grey,
          size: 26,
        ),
        onPressed: _alternarFavorito,
      ),
    );
  }
}
