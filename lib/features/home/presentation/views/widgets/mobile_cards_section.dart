import 'package:bank_dash/features/home/presentation/views/widgets/credit_card_container.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/custom_dot.dart';
import 'package:bank_dash/features/home/presentation/views/widgets/dots_indicator.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class MobileCardSection extends StatefulWidget {
  const MobileCardSection({super.key});

  @override
  State<MobileCardSection> createState() => _MobileCardSectionState();
}

class _MobileCardSectionState extends State<MobileCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpandablePageView(
          controller: pageController,
          children: const [
            BlueCreditCardContainer(),
            WhiteCreditCardContainer(),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
