import 'package:bank_dash/features/home/presentation/views/widgets/package_chart.dart';
import 'package:flutter/material.dart';

class MyChart extends StatelessWidget {
  const MyChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: const BarChartSample2(),
    );
  }
}
