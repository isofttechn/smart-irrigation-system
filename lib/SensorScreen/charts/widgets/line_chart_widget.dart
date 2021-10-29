import 'package:api_example_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import 'line_titles.dart';

class LineChartWidget extends StatelessWidget {
  // const LineChartWidget({Key? key}) : super(key: key);?

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
            minX: 0,
            maxX: 11,
            minY: 0,
            maxY: 6,
            titlesData: LineTitles.getTitleData(),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: HorizontalLineColor,
                  strokeWidth: 2,
                );
              },
              drawVerticalLine: true,
              getDrawingVerticalLine: (value) {
                return FlLine(
                  color: HorizontalLineColor,
                  strokeWidth: 2,
                );
              },
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(
                color: HorizontalLineColor,
                width: 2,
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(2.6, 2),
                  FlSpot(4.5, 5),
                  FlSpot(6.8, 2.5),
                  FlSpot(8, 4),
                  FlSpot(9.5, 3),
                  FlSpot(11, 4),
                ],
                isCurved: true,
                colors: gredientColors,
                barWidth: 5,
                // dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                  colors: gredientColors
                      .map(
                        (color) => color.withOpacity(0.3),
                      )
                      .toList(),
                ),
              )
            ]),
      );
}
