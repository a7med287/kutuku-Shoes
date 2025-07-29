import 'package:flutter/material.dart';

import '../../../../../core/utiles/size_config.dart';

class CustomOnBoardingItem extends StatelessWidget {
  const CustomOnBoardingItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.titleComplete,
    required this.subTitle,
    required this.subTitleCompete,
  });

  final String imagePath;
  final String title;
  final String titleComplete;
  final String subTitle;
  final String subTitleCompete;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 120),
        Image.asset(imagePath, height: SizeConfig.defaultSize! * 42),
        Text(
          title,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Color(0xff1A2530),
          ),
        ),
        Text(
          titleComplete,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
            color: Color(0xff1A2530),
          ),
        ),
        SizedBox(height: 8),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Color(0xff707B81),
          ),
        ),
        Text(
          subTitleCompete,
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
