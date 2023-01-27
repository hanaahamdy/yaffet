import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/cubits/app_states.dart';


import '../../features/person_alert/presentation/presentation/person_alert.dart';

import '../../features/bar/presentation/chart__screen.dart';
import 'package:training/features/settings/presentation/setting_screen.dart';

import '../../features/depost/presentation/presentation/depost_screen.dart';

class AppBloc extends Cubit<AppStates> {
  AppBloc() : super(InitState());

  static AppBloc get(BuildContext context) {
    return BlocProvider.of(context);
  }

  int currentIndex = 0;

  void bottomNavChange(int index) {
    currentIndex = index;
    emit(BottomNavState());
  }

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.bar_chart,
        ),
        label: "chart"),
    BottomNavigationBarItem(icon: Icon(Icons.attach_money_rounded), label: "My Depot"),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications_on,
        ),
        label: "Price Alert"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings")
  ];
  List<Widget> screens = [
    ChartPage(),
    DepostScreen(),
    PersonAlert(),

    SettingScreen()
  ];
  String? selectedGellawry;
  String? country;

  void dropDownGellaweryChange(String? value) {
    selectedGellawry = value;
    emit(DropDownState());
  }

  void dropDownCountryChange(String? value) {
    country = value;
    emit(CountryState());
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
