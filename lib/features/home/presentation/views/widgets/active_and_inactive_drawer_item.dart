import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/features/home/presentation/view_models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveAndInactiveDrawerItem extends StatelessWidget {
  const InActiveAndInactiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleMedium18(context),
      ),
    );
  }
}

class ActiveAndInactiveDrawerItem extends StatelessWidget {
  const ActiveAndInactiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
        colorFilter: const ColorFilter.mode(Color(0xff0023c4), BlendMode.srcIn),
      ),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleMedium18(context)
            .copyWith(color: const Color(0xff0023c4)),
      ),
      trailing: Container(
        width: 3.5,
        color: const Color(0xff0023c4),
      ),
    );
  }
}
