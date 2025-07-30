import 'package:flutter/material.dart';
class CustomIconWithDot extends StatelessWidget {
  const CustomIconWithDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(radius: 27.5, backgroundColor: Colors.white),
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          left: 0,
          child: Icon(Icons.local_mall_outlined),
        ),
        Positioned(
            top: 3,
            right: 3,
            child: CircleAvatar(radius: 5,backgroundColor: Color(0xffF87265))),
      ],
    );
  }
}
