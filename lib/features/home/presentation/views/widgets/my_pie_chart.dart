import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyPieChart extends StatefulWidget {
  const MyPieChart({super.key});

  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 350 / 322,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        child: PieChart(
          getChartData(),
        ),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
        centerSpaceRadius: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 8,
        sections: [
          PieChartSectionData(
            title: '35% \nOthers',
            titleStyle: AppStyles.styleSemiBold15.copyWith(color: Colors.white),
            showTitle: true,
            value: 35,
            radius: (MediaQuery.sizeOf(context).width / 7) - 60,
            color: const Color(0xFF1814F3),
          ),
          PieChartSectionData(
            title: '20% \nInvestment',
            titleStyle: AppStyles.styleSemiBold15.copyWith(color: Colors.white),
            titlePositionPercentageOffset: .6,
            showTitle: true,
            radius: (MediaQuery.sizeOf(context).width / 7) - 60,
            value: 45,
            color: const Color(0xFFFA00FF),
          ),
          PieChartSectionData(
            title: '30% \nEntertainment',
            titleStyle: AppStyles.styleSemiBold15.copyWith(color: Colors.white),
            showTitle: true,
            titlePositionPercentageOffset: .6,
            radius: (MediaQuery.sizeOf(context).width / 7) - 50,
            value: 40,
            color: const Color(0xFF343C6A),
          ),
          PieChartSectionData(
            title: '15% \nBill expense',
            titlePositionPercentageOffset: .7,
            titleStyle: AppStyles.styleSemiBold15.copyWith(color: Colors.white),
            showTitle: true,
            value: 15,
            radius: (MediaQuery.sizeOf(context).width / 7) - 30,
            color: const Color(0xFFFC7900),
          ),
        ]);
  }
}
