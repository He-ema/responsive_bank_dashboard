import 'package:bank_dash/core/utils/app_styles.dart';

import 'package:bank_dash/features/home/presentation/views/widgets/recent_transaction_list_view.dart';
import 'package:flutter/material.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Recent Transaction',
          style: AppStyles.styleSemiBold22,
        ),
        const SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 350 / 235,
          child: Container(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: const RecentTransactionListView(),
          ),
        ),
      ],
    );
  }
}
