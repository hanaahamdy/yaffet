import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ChartStates.dart';

class ChartBloc extends Cubit<ChartStates>{
  ChartBloc():super(ChartInitState());

  static ChartBloc get(  BuildContext context){
  return BlocProvider.of(context);

  }
  String? weight_unit;

  void dropDownWeightUnitChange(String? value) {
    weight_unit = value;
    emit(WeightUnitState());
  }

  String? goldPurity;

  void dropDownGoldPUrity(String? value) {
    goldPurity = value;
    emit(GoldPurityState());
  }

  String? currency;

  void dropDownCurrency(String? value) {
    currency = value;
    emit(CurrencyState());
  }

 dynamic selectedRadioHeighestPrice="44.9k (99.9%)";
  void selectRadioButton(value){
    selectedRadioHeighestPrice=value;
    emit(RadioButtonState());
  }
}

