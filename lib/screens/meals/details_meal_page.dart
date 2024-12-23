import 'package:flutter/material.dart';
import 'package:tp_flutter_bloc_etd/components/meal_card.dart';
import 'package:tp_flutter_bloc_etd/models/day_meal_model.dart';
import 'package:tp_flutter_bloc_etd/models/meal_model.dart';

class DetailsMealPage extends StatelessWidget {
  const DetailsMealPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<MealModel> myListOfMeals = [];
    // Récupérer les arguments une seule fois
    if (ModalRoute.of(context)?.settings.arguments != null) {
      final receivedData =
          ModalRoute.of(context)?.settings.arguments as List<MealModel>;
      myListOfMeals = receivedData;
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text(
          "Day details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),

      // Body
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: myListOfMeals.length,
        itemBuilder: (context, index) {
          return MealCard(mealTMP: myListOfMeals[index]);
        },
      ),
    );
  }
}
