import 'package:flutter/material.dart';
import 'package:kutuku/core/utiles/size_config.dart';
import 'package:kutuku/features/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';
class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
   SizeConfig().init(context);
    return const Scaffold(

      body:  OnBoardingViewBody()
    );
  }
}

