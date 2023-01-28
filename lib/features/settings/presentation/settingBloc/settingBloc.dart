import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/features/settings/presentation/settingBloc/settingStates.dart';

class SettingsBloc extends Cubit<SettingStates>{
  SettingsBloc():super(SettingInitState());
  static SettingsBloc get(BuildContext context){
    return BlocProvider.of(context);
  }
  String?currentLanguage;
  void changeLanguage(var lang){
    currentLanguage=lang;
    emit(SettingLanguageState());
  }
  String?settingsWeightUnit;
  void settingsWeightUnitField(var weightUnit){
    settingsWeightUnit=weightUnit;
    emit(SettingWeightUnit());
  }

  String?settingsPureGold;
  void settingsPureGoldField(var weightUnit){
    settingsPureGold=weightUnit;
    emit(SettingPureGoldState());
  }
  String?settingsCurrency;
  void settingsCurrencyField(var currency){
    settingsCurrency=currency;
    emit(SettingCurrencyState());
  }
  bool switchButtonValue=false;
  void settingsNotificationField(var notificate){
   switchButtonValue=notificate;
    emit(SettingNotificationState());
  }
  List<String> settingLanguageDropDwnMenu=["English","Arabic"];
  List<String> settingWeightUnitDropDwnMenu=["oz","pr"];
  List<String> settingPureGoldDropDwnMenu=["24k","21k","18k"];
  List<String> settingCurrencyDropDwnMenu=["Egy","Dol","Rial"];

}