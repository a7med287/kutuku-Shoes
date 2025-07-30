import 'package:flutter/material.dart';

import 'custom_icon_with_dot.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/dots4_icon.png", height: 55),
        Spacer(),
        Column(
          children: [
            Text(
              "Store location",
              style: TextStyle(
                color: Color(0xff707B81),
                fontSize: 16,
                fontFamily: "AirbnbCereal_W_Bk",
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              children: [
                Icon(Icons.location_on, color: Color(0xffF87265)),
                Text(
                  "Mondolibug, Sylhet",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        CustomIconWithDot(),
      ],
    );
  }
}
