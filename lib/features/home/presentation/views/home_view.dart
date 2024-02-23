import 'package:bank_dash/features/home/presentation/views/widgets/adaptive_layout_widget.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/bank_dashboard_desktop.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const BankDashboardDesktop(),
      ),
    );
  }
}
