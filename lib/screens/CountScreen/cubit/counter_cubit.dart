import 'package:count_point/screens/CountScreen/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// there is no use of counter state 
class CounterACubit extends Cubit<CounterState> {
  CounterACubit():super(CounterA());
  int teamACount = 0 ;
  int teamBCount = 0;
  void increment({ required String teamName , required int plus}){
    if ( teamName == "A"){
     teamACount += plus ;
    if ( teamACount > 999) {teamACount = 999 ;}
      
      emit(CounterA()) ;
    }
    else if ( teamName == "B"){
    teamBCount += plus ;
    if ( teamBCount > 999) {teamBCount = 999 ;}
    emit(CounterB()) ;}
  }
}
// there is no use of counter state 

