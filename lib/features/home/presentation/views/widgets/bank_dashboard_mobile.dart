import 'package:bank_dash/features/home/presentation/views/widgets/balance_history.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/chart_section.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/credit_card_header.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/expense_chart.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/mobile_cards_section.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/quick_transfer.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/recent_transaction.dart';
import 'package:flutter/material.dart';

class BankDashboardMobile extends StatelessWidget {
  const BankDashboardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CreditCardHeader(),
                SizedBox(
                  height: 20,
                ),
                MobileCardSection(),
                SizedBox(
                  height: 20,
                ),
                RecentTransaction(),
                SizedBox(
                  height: 20,
                ),
                ChartSection(),
                SizedBox(
                  height: 20,
                ),
                ExpenseChart(),
                SizedBox(
                  height: 20,
                ),
                QuickTransfer(),
                SizedBox(
                  height: 20,
                ),
                BalanceHistory(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
