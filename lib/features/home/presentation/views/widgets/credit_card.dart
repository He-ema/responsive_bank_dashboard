import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/credit_card_container.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Cards',
              style: AppStyles.styleSemiBold22,
            ),
            Text(
              'See all',
              style: AppStyles.styleSemiBold17,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(child: BlueCreditCardContainer()),
            SizedBox(
              width: 15,
            ),
            Expanded(child: WhiteCreditCardContainer()),
          ],
        ),
      ],
    );
  }
}
