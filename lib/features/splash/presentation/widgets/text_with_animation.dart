import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kutuku/features/on_boarding/presentation/views/on_boarding_view.dart';

class TextWithAnimation extends StatelessWidget {
  const TextWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(fontSize: 18.0),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            'Any shopping just from home',
            speed: Duration(milliseconds: 150),
          ),
        ],
        isRepeatingAnimation: false,
        onFinished: () {
          Get.to(
            () => OnBoardingView(),
            transition: Transition.fade,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        },
      ),
    );
  }
}
