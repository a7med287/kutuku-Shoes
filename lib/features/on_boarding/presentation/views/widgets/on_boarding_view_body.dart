import 'package:flutter/material.dart';
import 'package:kutuku/core/utiles/size_config.dart';
import 'package:kutuku/features/on_boarding/presentation/views/widgets/text_section.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'custom_dots_indicator.dart';
import 'nike_custom_text.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              "assets/images/img.png",
              height: SizeConfig.defaultSize! * 23,
            ),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 14,
            child: Opacity(
              opacity: .1,
              child: NikeCustomText(),
            ),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 14,
            child: Image.asset(
              "assets/images/dots.png",
              height: SizeConfig.defaultSize! * 36,
            ),
          ),
          PageView(
            children: [
              CustomOnBoardingItem(imagePath: 'assets/images/on_boarding1.png',),
              CustomOnBoardingItem(imagePath: 'assets/images/on_boarding3.png',),
              CustomOnBoardingItem(imagePath: 'assets/images/on_boarding2.png',),
            ],
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 5,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomDotsIndicator(indexDot: 0,),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: CustomButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

