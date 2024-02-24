import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';

import 'package:bank_dash/features/home/presentation/views/widgets/quick_transfer_field.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/quick_transfer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class QuickTransferBody extends StatelessWidget {
  const QuickTransferBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:
          MediaQuery.sizeOf(context).width < 800 ? (20 / 15) : (445 / 276),
      child: Container(
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
          child: Column(
            children: [
              const QuickTransferList(),
              const SizedBox(
                height: 29,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      'Write Amouunt',
                      style: AppStyles.styleRegular16(context)
                          .copyWith(color: const Color(0xff718EBF)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      // flex: 3,
                      child: QuickTransferTextField(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      // flex: 2,
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: ShapeDecoration(
                            color: const Color(0xff1814F3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Send',
                              style: AppStyles.styleMedium16(context)
                                  .copyWith(color: Colors.white),
                            ),
                            SvgPicture.asset(Assets.imagesSendArrow),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
