import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training/core/utils/colors.dart';
import 'package:training/features/home/presentation/home_page.dart';
import '../../core/cubits/app_bloc.dart';
import '../../core/cubits/app_states.dart';
import '../shared/dropDownButton.dart';
import '../shared/default_button.dart';

class welcome_screen extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppStates>(builder: (context, state) {
      double screenHeight = MediaQuery.of(context).size.height;
      AppBloc cubit = AppBloc.get(context);
      return Scaffold(
        body: Stack(
          children: [
            Image(
              width: double.infinity,
              height: double.infinity,
              image: AssetImage("assets/images/welcome_background.jpg"),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Form(
                key: formKey,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: screenHeight * .55,
                    decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(15)),
                    margin: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        CustomDropDownButton(
                            selected: cubit.selectedGellawry,
                            onchange: (String? value) {
                              cubit.dropDownGellaweryChange(value);
                            },
                            dropDownItems: [
                              "Usa Dollar",
                              "British Bound",
                              "yen",
                              "Egyptian Pound",
                              "Kuwait dinar",
                              "mani rial",
                              "UAE dirham"
                            ],
                            dropdownHintText: "Select Country"),
                        SizedBox(
                          height: 20,
                        ),
                        CustomDropDownButton(
                          selected: cubit.country,
                          onchange: (String? value) {
                            cubit.dropDownCountryChange(value);
                          },
                          dropDownItems: ["Gold", "Dimond", "silver"],
                          dropdownHintText: "Select Type",
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        DefaultButton(
                            buttonAction: () {
                              if (formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }
                            },
                            buttonLabel: "Show Result",
                            buttonBackgroundColor: blackColor,
                            buttonLabelColor: whiteColor)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
