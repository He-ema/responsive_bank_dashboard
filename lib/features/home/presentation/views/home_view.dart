import 'package:bank_dash/features/home/presentation/views/widgets/adaptive_layout_widget.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/bank_dashboard_desktop.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/bank_dashboard_mobile.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/tablet_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MediaQuery.sizeOf(context).width < 800
          ? Colors.white
          : const Color(0xfff5f7fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => const BankDashboardMobile(),
        tabletLayout: (context) => const TabletBody(),
        desktopLayout: (context) => const BankDashboardDesktop(),
      ),
    );
  }
}
