import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/cubits/app_bloc.dart';
import 'package:training/core/utils/colors.dart';

import 'core/utils/bloc_observer.dart';
import 'features/bar/presentation/chart__screen.dart';
import 'features/welcome_screen/select_contry_an_type.dart';
import 'features/home/presentation/home_page.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[100],
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Colors.grey,
              unselectedItemColor: goldColor,
              type: BottomNavigationBarType.fixed),
          primarySwatch: Colors.blue,
        ),
        home:welcome_screen(),
      ),
    );
  }
}
