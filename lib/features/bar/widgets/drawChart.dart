import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Container DrawChart() {
  return Container(
    height: 300,
    width: double.infinity,
    child: LineChart(
      LineChartData(
        maxX: 10,
        maxY: 100,
        minX: 0,
        minY: 0,
        lineBarsData: [
          LineChartBarData(isCurved: true, spots: [
            FlSpot(0, 0),
            FlSpot(5, 30),
            FlSpot(9, 6),
            FlSpot(8, 4)
          ])
        ],
      ),
    ),
  );
}