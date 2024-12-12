import 'package:tp_flutter_bloc_etd/models/ingrediant_model.dart';
import 'package:hive/hive.dart';
part 'meal_model.g.dart';

@HiveType(typeId: 2)
class MealModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String imgPath;
  @HiveField(2)
  final List<IngrediantModel> listOfIngrediant;

  MealModel({
    required this.name,
    required this.imgPath,
    required this.listOfIngrediant,
  });
}
