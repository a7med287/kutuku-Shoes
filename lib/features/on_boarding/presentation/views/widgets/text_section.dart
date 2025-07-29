import 'package:flutter/material.dart';

class TextSectionOnBoarding extends StatelessWidget {
  const TextSectionOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
