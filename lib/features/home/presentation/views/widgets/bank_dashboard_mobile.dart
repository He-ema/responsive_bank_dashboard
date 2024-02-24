import 'package:bank_dash/features/home/presentation/views/widgets/credit_card_header.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/mobile_cards_section.dart';
import 'package:flutter/material.dart';

class BankDashboardMobile extends StatelessWidget {
  const BankDashboardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              CreditCardHeader(),
              SizedBox(
                height: 20,
              ),
              MobileCardSection(),
            ],
          ),
        ),
      ],
    );
  }
}
