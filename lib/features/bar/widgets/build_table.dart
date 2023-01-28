import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training/core/utils/colors.dart';
import 'package:training/core/utils/tesxts.dart';

import '../../../core/cubits/app_bloc.dart';
import 'buttons/getHeighestPriceButton.dart';

Widget buildTable(double screenHeight,
    {required AppBloc cubit, required BuildContext context}) {
  return Card(
    elevation: 10,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "Gold Price Performance ",
            textColor: blackColor,
            fontWeight: FontWeight.w700,
            fontSize: 13,
          ),
          Container(
            padding: EdgeInsets.all(8),
            height: screenHeight * .2,
            child: Table(
              border: TableBorder.all(),
              children: [
                buildRowForTable(["Gold Purity", "Bid", "Aak", "change"],
                    isHeader: true),
                buildRowForTable(
                  ["24k", "1800 EGP", "1805 EGP", "+24.5"],
                ),
                buildRowForTable(
                  ["21k", "1655 EGP", "1655 EGP", "-2.5"],
                ),
                buildRowForTable(
                  ["18K", "1400 EGP", "178 EGP", "0"],
                )
              ],
            ),
          ),
          getHeighestPriceButton(context: context, cubit: cubit),
        ],
      ),
    ),
  );
}

TableRow buildRowForTable(List<String> cells, {bool isHeader = false}) {
  return TableRow(
      children: cells.map((e) {
    final style =
        TextStyle(fontWeight: isHeader ? FontWeight.bold : FontWeight.normal);
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Center(
          child: Text(
        e,
        style: style,
      )),
    );
  }).toList());
}
