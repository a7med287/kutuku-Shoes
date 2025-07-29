import 'package:flutter/material.dart';
import 'package:kutuku/features/on_boarding/presentation/views/widgets/text_section.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, @required this.pageController});

 final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        CustomOnBoardingItem(
          imagePath: 'assets/images/on_boarding1.png',
          title: 'Start Journey',
          titleComplete: 'With Nike',
          subTitle: 'Smart, Gorgeous & Fashionable',
          subTitleCompete: 'Collection',
        ),
        CustomOnBoardingItem(
          imagePath: 'assets/images/on_boarding3.png',
          title: 'Follow Latest',
          titleComplete: 'Style Shoes',
          subTitle: 'There Are Many Beautiful And',
          subTitleCompete: 'Attractive Plants To Your Room',
        ),
        CustomOnBoardingItem(
          imagePath: 'assets/images/on_boarding2.png',
          title: 'Summer Shoes',
          titleComplete: 'Nike 2025',
          subTitle: 'Amet Minim Lit Nodeseru Saku',
          subTitleCompete: 'Nandu sit Alique Dolor',
        ),
      ],
    );
  }
}
