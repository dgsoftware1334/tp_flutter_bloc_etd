import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_flutter_bloc_etd/state_management/abstract_bloc/abstract_app_event.dart';
import 'package:tp_flutter_bloc_etd/state_management/abstract_bloc/abstract_app_state.dart';
import 'package:tp_flutter_bloc_etd/state_management/meals_bloc/meal_event.dart';
import 'package:tp_flutter_bloc_etd/state_management/meals_bloc/meal_state.dart';

class MealBlocProvider extends Bloc<AbstractAppEvent, AbstractAppState> {
  MealBlocProvider() : super(const MealInitializationState(isLoading: false)) {
    /******************************************Meal Event Initalization**************************************/

    on<MealEventInitalization>((event, emit) async {
      emit(
        const MealInitializationState(
          isLoading: false,
        ),
      );
    });
  }
}
