import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/features/settings/presentation/settingBloc/settingBloc.dart';
import 'package:training/features/settings/presentation/settingBloc/settingStates.dart';
import 'package:training/features/settings/presentation/widgets/settingBody.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return BlocProvider(
        create: (context) => SettingsBloc(),
        child: BlocBuilder<SettingsBloc, SettingStates>(
          builder: (context, state) {
            SettingsBloc cubit = SettingsBloc.get(context);
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: SettingBody(screenHeight, cubit),
              ),
            );
          },
        ));
  }
}
