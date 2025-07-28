import 'package:flutter/material.dart';
import 'package:kutuku/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff504eb6),
      body: const SplashViewBody(),
    );
  }
}
