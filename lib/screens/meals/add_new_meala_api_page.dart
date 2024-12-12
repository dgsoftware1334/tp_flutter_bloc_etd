import 'package:flutter/material.dart';
import 'package:tp_flutter_bloc_etd/components/meal_card.dart';
import 'package:tp_flutter_bloc_etd/components/my_button.dart';
import 'package:tp_flutter_bloc_etd/models/meal_model.dart';

class AddNewMealAPIPage extends StatefulWidget {
  const AddNewMealAPIPage({super.key});

  @override
  State<AddNewMealAPIPage> createState() => _AddNewMealAPIPageState();
}

class _AddNewMealAPIPageState extends State<AddNewMealAPIPage> {
  List<MealModel> selectedMealList = [];

  void removeSelectedMeal(MealModel mealTMP) {
    setState(() {
      //to do
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create new meal ",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Selected meals Container
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Selected Meals",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemCount: selectedMealList.length,
                              itemBuilder: (context, index) {
                                return MealCard(
                                  mealTMP: selectedMealList[index],
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                MyButton(
                  butLabel: "Save",
                  onePressed: () async {
                    //Todo

                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
