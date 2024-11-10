
import 'package:counter_app/counter_controlller/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInit());

     int counter =0;

  void increment() {
    counter++;
    emit( CounterInit());
  }
  void minus() {
  counter--;
  emit( CounterInit());

  }
  void reset() {
  counter=0;
  emit( CounterInit());

  }

}