import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cubits/app_bloc.dart';
import '../../../core/cubits/app_states.dart';

class SettingScreen extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
  return  BlocBuilder<AppBloc, AppStates>(builder: (context, state) {
      AppBloc cubit = AppBloc();
      return Center(child:  Text("seetings"),);
    });
  }
}
