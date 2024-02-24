import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/custom_icon.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/image_avatar.dart';
import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
    this.openDrawer,
  });
  final VoidCallback? openDrawer;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            MediaQuery.sizeOf(context).width < 1100 &&
                    MediaQuery.sizeOf(context).width > 800
                ? Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                        onPressed: () {
                          openDrawer!();
                        },
                        icon: const Icon(Icons.menu)),
                  )
                : const SizedBox(),
            Text(
              'Overview',
              style: AppStyles.styleSemiBold28(context),
            ),
            const Expanded(child: SizedBox()),
            const Expanded(
              child: CustomTextField(),
            ),
            const SizedBox(
              width: 30,
            ),
            const CustomIcon(image: Assets.imagesSettings),
            const SizedBox(
              width: 30,
            ),
            const CustomIcon(image: Assets.imagesNotifiactions),
            const SizedBox(
              width: 30,
            ),
            const ImageAvatar(image: Assets.imagesAvatarMan),
          ],
        ),
      ),
    );
  }
}
