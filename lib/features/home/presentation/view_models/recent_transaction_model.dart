import 'package:flutter/material.dart';

class RecentTransactionModel {
  final String icon, title, subtitle, amount;
  final Color iconBackGroundColor;
  final bool isWhithDrawl;

  const RecentTransactionModel(
      {required this.icon,
      required this.iconBackGroundColor,
      required this.title,
      required this.subtitle,
      required this.amount,
      required this.isWhithDrawl});
}
