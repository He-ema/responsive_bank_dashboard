import 'package:bank_dash/features/home/presentation/views/widgets/custom_header.dart';

import 'package:bank_dash/features/home/presentation/views/widgets/tablet_body.dart';
import 'package:flutter/material.dart';

class DesktopOtherBody extends StatelessWidget {
  const DesktopOtherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(),
        Expanded(
          child: TabletBody(),
        ),
      ],
    );
  }
}
