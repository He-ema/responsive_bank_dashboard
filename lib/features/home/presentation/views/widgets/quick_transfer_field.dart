import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickTransferTextField extends StatelessWidget {
  const QuickTransferTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Amount',
        hintStyle: AppStyles.styleRegular16.copyWith(
          color: const Color(0xff718EBF),
        ),
        filled: true,
        fillColor: const Color(0xffEDF1F7),
        border: createBorder(),
        enabledBorder: createBorder(),
        focusedBorder: createBorder(),
      ),
    );
  }

  OutlineInputBorder createBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(25),
    );
  }
}
