import 'package:bank_dash/core/utils/app_styles.dart';
import 'package:bank_dash/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BlueCreditCardContainer extends StatelessWidget {
  const BlueCreditCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 350 / 235,
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0xff4C49ED),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: ListTile(
                minVerticalPadding: 0,
                dense: true,
                contentPadding: EdgeInsets.zero,
                visualDensity:
                    const VisualDensity(horizontal: -4, vertical: -4),
                title: Text(
                  'Balance',
                  style: AppStyles.styleRegular12(context),
                ),
                subtitle: Text(
                  r'$5,756',
                  style: AppStyles.styleSemiBold20(context),
                ),
                trailing: SvgPicture.asset(
                  Assets.imagesChip,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CARD HOLDER',
                        style: AppStyles.styleRegular12(context),
                      ),
                      Text(
                        'Eddy Cusuma',
                        style: AppStyles.styleSemiBold15(context)
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'VALID THRU',
                        style: AppStyles.styleRegular12(context),
                      ),
                      Text(
                        '12/22',
                        style: AppStyles.styleSemiBold15(context)
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
            // const Spacer(),
            AspectRatio(
              aspectRatio: 7 / 1,
              child: Container(
                decoration: ShapeDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.3),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  shape: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3778 **** **** 1234',
                        style: AppStyles.styleSemiBold22(context)
                            .copyWith(color: Colors.white),
                      ),
                      // const Spacer(),
                      SvgPicture.asset(Assets.imagesCardtrailing),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WhiteCreditCardContainer extends StatelessWidget {
  const WhiteCreditCardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 350 / 235,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: MediaQuery.sizeOf(context).width < 800
                  ? const BorderSide()
                  : BorderSide.none),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: ListTile(
                minVerticalPadding: 0,
                dense: true,
                contentPadding: EdgeInsets.zero,
                visualDensity:
                    const VisualDensity(horizontal: -4, vertical: -4),
                title: Text(
                  'Balance',
                  style: AppStyles.styleRegular12(context)
                      .copyWith(color: const Color(0xff343C6A)),
                ),
                subtitle: Text(
                  r'$5,756',
                  style: AppStyles.styleSemiBold20(context)
                      .copyWith(color: const Color(0xff343C6A)),
                ),
                trailing: SvgPicture.asset(
                  Assets.imagesChip,
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                ),
              ),
            ),
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CARD HOLDER',
                        style: AppStyles.styleRegular12(context)
                            .copyWith(color: const Color(0xff343C6A)),
                      ),
                      Text(
                        'Eddy Cusuma',
                        style: AppStyles.styleSemiBold15(context),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'VALID THRU',
                        style: AppStyles.styleRegular12(context)
                            .copyWith(color: const Color(0xff343C6A)),
                      ),
                      Text(
                        '12/22',
                        style: AppStyles.styleSemiBold15(context),
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
            // const Spacer(),
            AspectRatio(
              aspectRatio: 7 / 1,
              child: Container(
                decoration: ShapeDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.white.withOpacity(0.3),
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  shape: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Row(
                    children: [
                      Text(
                        '3778 **** **** 1234',
                        style: AppStyles.styleSemiBold22(context),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        Assets.imagesCardtrailing,
                        colorFilter: const ColorFilter.mode(
                            Colors.black, BlendMode.srcIn),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
