import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/features/home/presentation/view_models/quick_transfer_model.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/quick_transfer_body.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/quick_transfer_item.dart';
import 'package:flutter/material.dart';

class QuickTransfer extends StatelessWidget {
  const QuickTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Quick Transfer',
          style: AppStyles.styleSemiBold22(context),
        ),
        const SizedBox(
          height: 20,
        ),
        const QuickTransferBody(),
      ],
    );
  }
}
