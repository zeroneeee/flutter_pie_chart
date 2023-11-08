import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // title of pie chart in the center
        const Text("REVENUE"),

        // pie chart
        PieChart(
          swapAnimationDuration: const Duration(milliseconds: 750),
          swapAnimationCurve: Curves.easeInOutQuint,
          PieChartData(sections: [
            // item 1
            PieChartSectionData(
              value: 200,
              color: Colors.blueAccent,
            ),
            // item 2
            PieChartSectionData(
              value: 20,
              color: Colors.redAccent,
            ),

            // item 3
            PieChartSectionData(
              value: 20,
              color: Colors.greenAccent,
            ),

            // item 4
            PieChartSectionData(
              value: 20,
              color: Colors.yellowAccent,
            ),
          ]),
        )
      ],
    );
  }
}
