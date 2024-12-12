import 'package:flutter/material.dart';
import 'package:tp_flutter_bloc_etd/models/ingrediant_model.dart';
import 'package:tp_flutter_bloc_etd/models/meal_model.dart';

class IngrediantCard extends StatelessWidget {
  final IngrediantModel ingrediantTMP;
  final Function(IngrediantModel) removeIngrediant;
  const IngrediantCard(
      {super.key, required this.ingrediantTMP, required this.removeIngrediant});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade300,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(ingrediantTMP.name.toUpperCase()),
                SizedBox(width: 20),
                Text("Quantity: ${ingrediantTMP.quantite.toString()}"),
              ],
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                removeIngrediant(ingrediantTMP);
              },
            ),
          ],
        ),
      ),
    );
  }
}
