// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_meal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DayMealModelAdapter extends TypeAdapter<DayMealModel> {
  @override
  final int typeId = 0;

  @override
  DayMealModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DayMealModel(
      dayName: fields[0] as String,
      listOfMeals: (fields[1] as List).cast<MealModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, DayMealModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.dayName)
      ..writeByte(1)
      ..write(obj.listOfMeals);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DayMealModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
