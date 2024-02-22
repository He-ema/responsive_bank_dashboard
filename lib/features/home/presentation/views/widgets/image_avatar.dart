import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: const CircleBorder(),
      child: Container(
        width: 60,
        height: 60,
        decoration: const ShapeDecoration(
          shape: OvalBorder(),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(image)),
      ),
    );
  }
}
