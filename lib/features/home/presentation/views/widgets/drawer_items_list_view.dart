import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/features/home/presentation/view_models/drawer_item_model.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final items = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawerItemModel(
        image: Assets.imagesTransactions, title: 'Transactions'),
    const DrawerItemModel(image: Assets.imagesAccounts, title: 'Accounts'),
    const DrawerItemModel(
        image: Assets.imagesInvestments, title: 'Investments'),
    const DrawerItemModel(image: Assets.imagesCard, title: 'Credit Cards'),
    const DrawerItemModel(image: Assets.imagesLoans, title: 'Loans'),
    const DrawerItemModel(image: Assets.imagesServices, title: 'Services'),
    const DrawerItemModel(
        image: Assets.imagesMyPrivileges, title: 'My Privileges'),
    const DrawerItemModel(image: Assets.imagesSettings, title: 'Setting'),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (activeIndex != index) {
            activeIndex = index;
            setState(() {});
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: DrawerItem(
            drawerItemModel: items[index],
            isActive: activeIndex == index,
          ),
        ),
      ),
    );
  }
}
