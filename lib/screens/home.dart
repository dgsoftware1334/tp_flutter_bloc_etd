import 'package:flutter/material.dart';
import 'package:tp_flutter_bloc_etd/components/day_card.dart';
import 'package:tp_flutter_bloc_etd/models/day_meal_model.dart';
import 'package:tp_flutter_bloc_etd/models/meal_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _controller = ScrollController();
  final List<DayMealModel> _jours_semaine = [
    DayMealModel(dayName: "Samedi", listOfMeals: []),
    DayMealModel(dayName: "Dimande", listOfMeals: []),
    DayMealModel(dayName: "Lundi", listOfMeals: []),
    DayMealModel(dayName: "Mardi", listOfMeals: []),
    DayMealModel(dayName: "Mercredi", listOfMeals: []),
    DayMealModel(dayName: "Jeudi", listOfMeals: []),
    DayMealModel(dayName: "Vendredi", listOfMeals: []),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        // controller: _controller,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: _jours_semaine.length,
        itemBuilder: (context, index) {
          return DayCard(
            dayTMP: _jours_semaine[index],
          );
        },
      ),
    );
  }
}
