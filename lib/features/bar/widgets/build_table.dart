import 'package:flutter/material.dart';

Container buildTable(double screenHeight) {
  return Container(
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