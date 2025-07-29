import 'package:flutter/material.dart';
import 'package:kutuku/core/utiles/size_config.dart';
import 'package:kutuku/features/on_boarding/presentation/views/widgets/text_section.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'nike_custom_text.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
            top: SizeConfig.defaultSize! * 16,
            child: Opacity(
              opacity: .1,
              child: NikeCustomText(),
            ),
          ),
          Positioned(
            top: SizeConfig.defaultSize! * 16,
            child: Image.asset(
              "assets/images/on_boarding1.png",
              height: SizeConfig.defaultSize! * 44,
            ),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 16,
            child: TextSectionOnBoarding(),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 5,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("..........."),
                Expanded(child: SizedBox()),
                CustomButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}