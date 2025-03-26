import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartSample extends StatelessWidget {
  const BarChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 8,
                color: Colors.lightBlueAccent,
              )
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 10,
                color: Colors.lightBlueAccent,
              )
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 14,
                color: Colors.lightBlueAccent,
              )
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: 15,
                color: Colors.lightBlueAccent,
              )
            ],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                toY: 13,
                color: Colors.lightBlueAccent,
              )
            ],
          ),
        ],
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
            getTooltipColor: (barTouchTooltipData) => Colors.blueAccent,
          ),
          touchCallback: (FlTouchEvent event, BarTouchResponse? response) {
            if (!event.isInterestedForInteractions ||
                response == null ||
                response.spot == null) {
              return;
            }
            // Handle touch events here
          },
          handleBuiltInTouches: true,
        ),
      ),
    );
  }
}