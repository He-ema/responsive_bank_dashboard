import 'package:bank_dash/features/home/presentation/views/widgets/chart_section.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/credit_card.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/custom_header.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/expense_chart.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/my_chart.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/recent_transaction.dart';
import 'package:flutter/material.dart';

class DesktopOtherBody extends StatelessWidget {
  const DesktopOtherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(),
        Padding(
          padding: EdgeInsets.only(left: 15, top: 15, right: 7.5),
          child: Row(
            children: [
              Expanded(flex: 2, child: CreditCard()),
              SizedBox(
                width: 15,
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(right: 8),
                child: RecentTransaction(),
              )),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Expanded(flex: 2, child: ChartSection()),
              SizedBox(
                width: 15,
              ),
              Expanded(child: ExpenseChart()),
            ],
          ),
        ),
      ],
    );
  }
}
