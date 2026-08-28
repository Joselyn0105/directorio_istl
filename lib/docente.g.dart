// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docente.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DocenteAdapter extends TypeAdapter<Docente> {
  @override
  final typeId = 0;

  @override
  Docente read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Docente(
      nombres: fields[0] as String,
      apellidos: fields[1] as String,
      carrera: fields[3] as String,
      nivelEstudios: fields[2] as String,
      esFavorito: fields[4] == null ? false : fields[4] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Docente obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.nombres)
      ..writeByte(1)
      ..write(obj.apellidos)
      ..writeByte(2)
      ..write(obj.nivelEstudios)
      ..writeByte(3)
      ..write(obj.carrera)
      ..writeByte(4)
      ..write(obj.esFavorito);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DocenteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
