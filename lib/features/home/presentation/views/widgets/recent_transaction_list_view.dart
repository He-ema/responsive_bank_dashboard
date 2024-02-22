import 'package:bank_dash/core/utils/assets.dart';
import 'package:bank_dash/features/home/presentation/view_models/recent_transaction_model.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/recent_transaction_item.dart';
import 'package:flutter/material.dart';

class RecentTransactionListView extends StatelessWidget {
  const RecentTransactionListView({super.key});
  static const items = [
    RecentTransactionModel(
        icon: Assets.imagesIconfinder1,
        iconBackGroundColor: Color(0xffFFF5D9),
        title: 'Deposit from my Card',
        subtitle: '28 January 2021',
        amount: r'-$850',
        isWhithDrawl: true),
    RecentTransactionModel(
        icon: Assets.imagesIconfinder2,
        iconBackGroundColor: Color(0xffE7EDFF),
        title: 'Deposit Paypal',
        subtitle: '25 January 2021',
        amount: r'+$2,500',
        isWhithDrawl: false),
    RecentTransactionModel(
        icon: Assets.imagesIconfinder3,
        iconBackGroundColor: Color(0xffDCFAF8),
        title: 'Jemi Wilson',
        subtitle: '21 January 2021',
        amount: r'+$5,400',
        isWhithDrawl: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items
          .map((e) => RecentTransactionItem(recentTransactionModel: e))
          .toList(),
    );
  }
}
