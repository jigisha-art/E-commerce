// main_page.dart
import 'package:flutter/material.dart';
import 'donut_chart.dart'; // Import the DonutChart widget
import 'chart_legends.dart'; // Import the ChartLegend widget

class donutcard_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Selling Data",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 20),
                Expanded(child: DonutChart()),
                const SizedBox(width: 20),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ChartLegend(),
                )),
              ],
            ),
          ),
       ],
      ),
    );
  }
}
