import 'package:flutter/material.dart';
class TextSection extends StatelessWidget{
  const TextSection({super.key, required this.title, required this.subTitle});

  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
             subTitle,
              style: TextStyle(
                color: Color(0xff707B81),
                fontSize: 16,
                fontWeight: FontWeight.w100,
                fontFamily: "AirbnbCereal_W_Bk"
              ),
            ),
          ],
        ),
      ],
    );
  }
}
