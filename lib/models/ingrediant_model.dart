import 'package:hive/hive.dart';
part 'ingrediant_model.g.dart';

@HiveType(typeId: 1)
class IngrediantModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final double quantite;

  IngrediantModel({required this.name, required this.quantite});
}
