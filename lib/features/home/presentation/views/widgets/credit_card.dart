import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/credit_card_container.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/credit_card_header.dart';
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CreditCardHeader(),
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
