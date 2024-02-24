import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/adaptive_layout_widget.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/bank_dashboard_desktop.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/bank_dashboard_mobile.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/custom_drawer.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/image_avatar.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/tablet_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.sizeOf(context).width < 1100 ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: IconButton(
                  onPressed: openDrawer, icon: const Icon(Icons.menu)),
              toolbarHeight: 80,
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              centerTitle: true,
              actions: const [
                ImageAvatar(image: Assets.imagesAvatarMan),
              ],
              title: Text(
                'Overview',
                style: AppStyles.styleSemiBold28(context),
              ),
            )
          : null,
      backgroundColor: MediaQuery.sizeOf(context).width < 800
          ? Colors.white
          : const Color(0xfff5f7fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => const BankDashboardMobile(),
        tabletLayout: (context) => TabletBody(openDrawer: openDrawer),
        desktopLayout: (context) => const BankDashboardDesktop(),
      ),
    );
  }

  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
    setState(() {});
  }
}
