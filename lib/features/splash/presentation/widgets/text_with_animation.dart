import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

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
            speed: Duration(milliseconds: 200),
          ),
        ],
        isRepeatingAnimation: false,
        onFinished: () {},
      ),
    );
  }
}
