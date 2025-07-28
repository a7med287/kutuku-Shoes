import 'package:flutter/material.dart';
import 'package:kutuku/features/splash/presentation/widgets/text_with_animation.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
           Text(
            "Kutuku",
            style: TextStyle(
              fontSize: 52,
              fontFamily: "PublicaPlay",
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
           TextWithAnimation(),
        ],
      ),
    );
  }
}


