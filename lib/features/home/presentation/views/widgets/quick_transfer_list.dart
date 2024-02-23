import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/features/home/presentation/view_models/quick_transfer_model.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/quick_transfer_item.dart';
import 'package:flutter/material.dart';

class QuickTransferList extends StatelessWidget {
  const QuickTransferList({super.key});
  static const items = [
    QuickTransferModel(
        image: Assets.imagesAvatarMan, title: 'Livia Bator', subtitle: 'CEO'),
    QuickTransferModel(
        image: Assets.imagesMan2, title: 'Randy press', subtitle: 'Director'),
    QuickTransferModel(
        image: Assets.imagesAvatarMan, title: 'Work Man', subtitle: 'Designer'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:
          items.map((e) => QuickTransferItem(quickTransferModel: e)).toList(),
    );
  }
}
