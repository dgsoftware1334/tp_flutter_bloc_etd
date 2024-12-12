// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingrediant_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IngrediantModelAdapter extends TypeAdapter<IngrediantModel> {
  @override
  final int typeId = 1;

  @override
  IngrediantModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IngrediantModel(
      name: fields[0] as String,
      quantite: fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, IngrediantModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.quantite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IngrediantModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
