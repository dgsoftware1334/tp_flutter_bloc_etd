import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:tp_flutter_bloc_etd/helpers/route.dart';
import 'package:tp_flutter_bloc_etd/models/day_meal_model.dart';
import 'package:tp_flutter_bloc_etd/models/ingrediant_model.dart';
import 'package:tp_flutter_bloc_etd/models/meal_model.dart';
import 'package:tp_flutter_bloc_etd/screens/meals/add_new_meala_api_page.dart';
import 'package:tp_flutter_bloc_etd/screens/meals/details_meal_page.dart';
import 'package:tp_flutter_bloc_etd/screens/home.dart';
import 'package:tp_flutter_bloc_etd/screens/authentification/login_screen.dart';
import 'package:tp_flutter_bloc_etd/screens/authentification/signup_screen.dart';

Future<void> main() async {
  //-------------------------------------------------------------------
  await Hive.initFlutter();
  Hive.registerAdapter(DayMealModelAdapter());
  Hive.registerAdapter(MealModelAdapter());
  Hive.registerAdapter(IngrediantModelAdapter());

  //-------------------------------------------------------------------

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal TLM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        InternalRoute.getRouteHome(): (context) => HomeView(),
        InternalRoute.getRouteLogin(): (context) => LoginPage(),
        InternalRoute.getRouteSignUp(): (context) => SignupPage(),
        InternalRoute.getRouteDayDetails(): (context) => DetailsMealPage(),
        InternalRoute.getRouteAddNewMeal(): (context) => AddNewMealAPIPage()
      },
      home: LoginPage(),
    );
  }
}
