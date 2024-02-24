import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/my_pie_chart.dart';
import 'package:flutter/material.dart';

class ExpenseChart extends StatelessWidget {
  const ExpenseChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Expense Statistics',
          style: AppStyles.styleSemiBold22(context),
        ),
        const SizedBox(
          height: 18,
        ),
        const MyPieChart(),
      ],
    );
  }
}
