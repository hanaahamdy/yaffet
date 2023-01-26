import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:training/core/utils/colors.dart';


class ChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: LineChart(
          LineChartData(maxX: 10, maxY: 10, minX: 0, minY: 0, lineBarsData: [
        LineChartBarData(
            isCurved: true,
            spots: [FlSpot(0, 0), FlSpot(5, 5), FlSpot(7, 6), FlSpot(8, 4)])
      ],
          ),),
    );
  }
}
