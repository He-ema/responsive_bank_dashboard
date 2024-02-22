import 'package:bank_dash/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class BankDashboardDesktop extends StatelessWidget {
  const BankDashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
      ],
    );
  }
}
