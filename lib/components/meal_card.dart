import 'package:flutter/material.dart';
import 'package:tp_flutter_bloc_etd/models/meal_model.dart';

class MealCard extends StatelessWidget {
  final MealModel mealTMP;
  const MealCard({super.key, required this.mealTMP});

  @override
  Widget build(BuildContext context) {
    print(mealTMP.imgPath);
    return Card(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            height: 100,
            width: 100,
            child: Image.network(
              mealTMP.imgPath,
            ),
          ),
          Text(mealTMP.name),
          // Text(mealTMP.imgPath),
        ],
      ),
    );
  }
}
