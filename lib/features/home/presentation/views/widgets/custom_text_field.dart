import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Serach for something',
        hintStyle: AppStyles.styleRegular15,
        prefixIcon: const Icon(
          Icons.search,
          color: Color(0xff8BA3CB),
        ),
        filled: true,
        fillColor: const Color(0xffF5F7FA),
        border: createBorder(),
        enabledBorder: createBorder(),
        focusedBorder: createBorder(),
      ),
    );
  }

  OutlineInputBorder createBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(40),
        borderSide: const BorderSide(
          color: Color(0xffF5F7FA),
        ));
  }
}
