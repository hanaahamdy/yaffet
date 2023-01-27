import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/features/depost/presentation/DepotBloc/depottates.dart';

class DepotBloc extends Cubit<DepotStates> {
  DepotBloc() : super(DepotInitState());

  static DepotBloc get(BuildContext context) {
    return BlocProvider.of(context);
  }
  TextEditingController valueController = TextEditingController();
  TextEditingController depotWeightValueController= TextEditingController();

  var depotType;
  void depotTypeDropDownButton(var value){
    depotType=value;
    emit(AddDepotTypeState());
  }
  var selectedDepotWeightValue;
  void depotWeightValue(var value){
    selectedDepotWeightValue=value;
    emit(AddDepotWeightValueState());
  }

  var selectedDepotUnitValue;
  void depotWeightUnit(var value){
    selectedDepotUnitValue=value;
    emit(AddDepotWeightUnitState());
  }
  var selectedDepotPureGold;
  void depotPureGold(var value){
    selectedDepotPureGold=value;
    emit(AddDepotPureGoldState());
  }
  var selectedDepotCurrency;
  void depotCurrency(var value){
    selectedDepotCurrency=value;
    emit(AddDepotCurrencyState());
  }
  List <String>deptDropDownItems=["Gold","Silver"];
  List <String>depotWeightUnitDropDownItems=["oz","hh","pm"];
  List <String>depotPureDropDownItems=["24","21","18","16"];
  List <String>depotCurrencyDropDownItems=["Egp","Rial","Dolar"];
  GlobalKey <FormState>formKey=GlobalKey<FormState>();


}
