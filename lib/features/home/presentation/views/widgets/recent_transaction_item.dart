import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/features/home/presentation/view_models/recent_transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentTransactionItem extends StatelessWidget {
  const RecentTransactionItem(
      {super.key, required this.recentTransactionModel});
  final RecentTransactionModel recentTransactionModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      leading: Container(
        width: 45,
        height: 45,
        decoration: ShapeDecoration(
          color: recentTransactionModel.iconBackGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Center(
          child: SvgPicture.asset(recentTransactionModel.icon),
        ),
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          recentTransactionModel.title,
          style: AppStyles.styleMedium16(context),
        ),
      ),
      subtitle: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          recentTransactionModel.subtitle,
          style: AppStyles.styleRegular15(context).copyWith(
            color: const Color(0xff718EBF),
          ),
        ),
      ),
      trailing: Text(
        recentTransactionModel.amount,
        style: AppStyles.styleMedium16(context).copyWith(
            color: recentTransactionModel.isWhithDrawl
                ? const Color(0xffFF4B4A)
                : const Color(0xff41D4A8)),
      ),
    );
  }
}
