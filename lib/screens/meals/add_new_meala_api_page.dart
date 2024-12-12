import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tp_flutter_bloc_etd/components/ingrediant_card.dart';
import 'package:tp_flutter_bloc_etd/components/my_button.dart';
import 'package:tp_flutter_bloc_etd/models/ingrediant_model.dart';
import 'package:tp_flutter_bloc_etd/models/meal_model.dart';

class AddNewMealAPIPage extends StatefulWidget {
  const AddNewMealAPIPage({super.key});

  @override
  State<AddNewMealAPIPage> createState() => _AddNewMealAPIPageState();
}

class _AddNewMealAPIPageState extends State<AddNewMealAPIPage> {
  final TextEditingController mealNameCTRL = TextEditingController();
  final TextEditingController mealImgCTRL = TextEditingController();

  final TextEditingController ingrediantNameCTRL = TextEditingController();
  final TextEditingController ingrediantQuantityCTRL = TextEditingController();
  List<IngrediantModel> listOfIngrediants = [];

  GlobalKey<FormState> keyFormState = GlobalKey<FormState>();

  void removeIngrediant(IngrediantModel ingrediantTMP) {
    setState(() {
      listOfIngrediants.removeWhere((element) => element == ingrediantTMP);
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
                              itemCount: listOfIngrediants.length,
                              itemBuilder: (context, index) {
                                return IngrediantCard(
                                  ingrediantTMP: listOfIngrediants[index],
                                  removeIngrediant: removeIngrediant,
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
                    if (keyFormState.currentState!.validate()) {
                      //
                      MealModel mealTMP = MealModel(
                        name: mealNameCTRL.text,
                        imgPath: mealImgCTRL.text,
                        listOfIngrediant: listOfIngrediants,
                      );

                      Navigator.pop(
                        context,
                        mealTMP,
                      );
                    } else {
                      Fluttertoast.showToast(
                        msg: "Your entries isn't valide",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    }
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
