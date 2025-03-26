import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChartSample extends StatelessWidget {
  const PieChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            color: Colors.red,
            value: 40,
            title: '40%',
            radius: 50,
          ),
          PieChartSectionData(
            color: Colors.blue,
            value: 30,
            title: '30%',
            radius: 45,
          ),
          PieChartSectionData(
            color: Colors.green,
            value: 20,
            title: '20%',
            radius: 40,
          ),
          PieChartSectionData(
            color: Colors.yellow,
            value: 10,
            title: '10%',
            radius: 35,
          ),
        ],
        pieTouchData: PieTouchData(
          touchCallback: (FlTouchEvent event, PieTouchResponse? response) {
            if (!event.isInterestedForInteractions ||
                response == null ||
                response.touchedSection == null) {
              return;
            }
            // Handle touch events here
          },
        ),
      ),
    );
  }
}