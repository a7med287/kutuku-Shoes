import 'package:flutter/material.dart';

import '../../../../../core/utiles/size_config.dart';

class CustomOnBoardingItem extends StatelessWidget {
  const CustomOnBoardingItem({super.key, required this.imagePath});

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 120,),
        Image.asset(
          imagePath,
          height: SizeConfig.defaultSize! * 42,
        ),
        Text(
          "Start Journey",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Color(0xff1A2530),
          ),
        ),
        Text(
          "With Nike",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Color(0xff1A2530),
          ),
        ),
        SizedBox(height: 8,),
        Text(
          "Smart, Gorgeous & Fashionable",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Color(0xff707B81),
          ),
        ),
        Text(
          "Collection",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Color(0xff707B81),
          ),
        ),
      ],
    );
  }
}
