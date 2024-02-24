import 'package:bank_dash/features/home/presentation/views/widgets/balance_history.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/chart_section.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/credit_card.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/custom_header.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/expense_chart.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/quick_transfer.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/recent_transaction.dart';
import 'package:flutter/material.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({
    super.key,
    this.openDrawer,
  });
  final VoidCallback? openDrawer;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: MediaQuery.sizeOf(context).width >= 1100
              ? const SizedBox()
              : CustomHeader(
                  openDrawer: openDrawer,
                ),
        ),
        const SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
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
                    Expanded(flex: 730, child: ChartSection()),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(flex: 350, child: ExpenseChart()),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(flex: 445, child: QuickTransfer()),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(flex: 635, child: BalanceHistory()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
