import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(numValue: 0));


  void increment()=>emit(CounterState(numValue: state.numValue+1));
  void decrement()=>emit(CounterState(numValue: state.numValue-1));

}
