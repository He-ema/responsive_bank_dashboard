import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CreditCardHeader extends StatelessWidget {
  const CreditCardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'My Cards',
          style: AppStyles.styleSemiBold22(context),
        ),
        Text(
          'See all',
          style: AppStyles.styleSemiBold17(context),
        ),
      ],
    );
  }
}
