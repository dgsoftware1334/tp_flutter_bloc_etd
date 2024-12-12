import 'package:tp_flutter_bloc_etd/models/meal_model.dart';
import 'package:hive/hive.dart';
part 'day_meal_model.g.dart';

@HiveType(typeId: 0)
class DayMealModel {
  @HiveField(0)
  final String dayName;
  @HiveField(1)
  final List<MealModel> listOfMeals;

  DayMealModel({
    required this.dayName,
    required this.listOfMeals,
  });
}
