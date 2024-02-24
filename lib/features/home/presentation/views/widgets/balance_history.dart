import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/balance_chart.dart';
import 'package:flutter/material.dart';

class BalanceHistory extends StatelessWidget {
  const BalanceHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Balance History',
          style: AppStyles.styleSemiBold22(context),
        ),
        const SizedBox(
          height: 20,
        ),
        const BalanceChart(),
      ],
    );
  }
}
