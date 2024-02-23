import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/features/home/presentation/view_models/quick_transfer_model.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/image_avatar.dart';
import 'package:flutter/material.dart';

class QuickTransferItem extends StatelessWidget {
  const QuickTransferItem({super.key, required this.quickTransferModel});
  final QuickTransferModel quickTransferModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageAvatar(image: quickTransferModel.image),
        const SizedBox(
          height: 15,
        ),
        Text(
          quickTransferModel.title,
          style: AppStyles.styleRegular16,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          quickTransferModel.subtitle,
          style: AppStyles.styleRegular15,
        ),
      ],
    );
  }
}
