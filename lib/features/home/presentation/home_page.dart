import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/cubits/app_bloc.dart';
import 'package:training/core/cubits/app_states.dart';
import 'package:training/core/utils/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppStates>(builder: (context, state) {
      AppBloc cubit = AppBloc.get(context);
      return Scaffold(
        //appBar: AppBar(backgroundColor: whiteColor,elevation: 0,),
        body: SafeArea(child: cubit.screens[cubit.currentIndex]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: cubit.currentIndex,
          onTap: (index) {
            cubit.bottomNavChange(index);
          },
          items: cubit.items,
        ),
      );
    });
  }
}
