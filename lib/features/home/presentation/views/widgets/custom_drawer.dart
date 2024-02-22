import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/features/home/presentation/view_models/drawer_item_model.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/drawer_item.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/drawer_items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 35,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.imagesInvestments,
                  colorFilter: const ColorFilter.mode(
                      Color(0xff0023c4), BlendMode.srcIn),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  Assets.imagesBankDash,
                  colorFilter: const ColorFilter.mode(
                      Color(0xff343C6A), BlendMode.srcIn),
                ),
              ],
            ),
          ),
          const DrawerItemsListView(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                DrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout, title: 'Logout'),
                    isActive: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
