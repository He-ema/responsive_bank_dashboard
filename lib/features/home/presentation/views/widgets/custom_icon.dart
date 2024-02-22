import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const ShapeDecoration(
        color: Color(0xffF5F7FA),
        shape: OvalBorder(),
      ),
      child: Center(
        child: SvgPicture.asset(image),
      ),
    );
  }
}
