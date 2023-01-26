import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/cubits/app_states.dart';
import 'package:training/features/bar/presentation/draw_chart.dart';

import '../../features/person_alert/presentation/presentation/person_alert.dart';
import '../../features/welcome_screen/select_contry_an_type.dart';

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
    BottomNavigationBarItem(icon: Icon(Icons.attach_money_rounded), label: "Price Alert"),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications_on,
        ),
        label: "My Depost"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings")
  ];
  List<Widget> screens = [
    ChartPage(),
    PersonAlert(),
    DepostScreen(),
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


}
