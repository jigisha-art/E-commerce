import 'package:flutter/material.dart';

class ChartLegend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildLegendItem(Colors.green, "Grocery"),
        _buildLegendItem(Colors.pinkAccent, "Cosmetic"),
        _buildLegendItem(Colors.black87, "Electronic"),
      ],
    );
  }

  Widget _buildLegendItem(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          color: color,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
