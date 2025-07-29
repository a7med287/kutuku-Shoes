import 'package:flutter/material.dart';
class TextSection extends StatelessWidget{
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Again!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome Back You’ve Been Missed!",
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
