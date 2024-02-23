import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/my_chart.dart';
import 'package:flutter/material.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Weekly Activity',
          style: AppStyles.styleSemiBold22,
        ),
        SizedBox(
          height: 18,
        ),
        MyChart(),
      ],
    );
  }
}
