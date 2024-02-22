import 'package:bank_dash/features/home/presentation/view_models/drawer_item_model.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/active_and_inactive_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAndInactiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveAndInactiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
