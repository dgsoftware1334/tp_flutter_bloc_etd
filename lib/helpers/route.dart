class InternalRoute {
  // /*------------------------------------------Auth _routes---------------------------------------------------*/
  //       "HomePage": (context) => HomeView(),
  //       "LoginPage": (context) => LoginPage(),
  //       "SignupPage": (context) => SignupPage(),
  //       "DetailsPage": (context) => DetailsMealPage(myListOfMeals: [])

  static const String _routeHome = "HomePage";
  static const String _routeLogin = "LoginPage";
  static const String _routeSignUp = "SignupPage";
  static const String _routeDayDetails = "MealDetailsPage";
  static const String _routeAddNewMeal = "AddNewMeal";

  static String getRouteHome() {
    return _routeHome;
  }

  static String getRouteLogin() {
    return _routeLogin;
  }

  static String getRouteSignUp() {
    return _routeSignUp;
  }

  static String getRouteDayDetails() {
    return _routeDayDetails;
  }

  static String getRouteAddNewMeal() {
    return _routeAddNewMeal;
  }
}
