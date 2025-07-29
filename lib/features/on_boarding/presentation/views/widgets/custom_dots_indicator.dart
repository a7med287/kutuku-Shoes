import 'package:flutter/material.dart';
import 'package:kutuku/core/utiles/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class CustomDotsIndicator extends StatelessWidget{
  const CustomDotsIndicator({super.key, required this.indexDot});

  final int indexDot;
  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: indexDot,
      count: 3,
      effect: ExpandingDotsEffect(
          spacing:  10.0,
          radius:  8.0,
          dotWidth:  14.0,
          dotHeight:  8.0,
          strokeWidth:  1.5,
          dotColor:  Color(0xffE5EEF7),
          activeDotColor:  kPrimaryColor
      ),

    );
  }
}