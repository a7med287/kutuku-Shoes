import 'package:flutter/material.dart';
class NikeCustomText extends StatelessWidget {
  const NikeCustomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "NIKE",
      style: TextStyle(
        fontSize: 160,
        fontWeight: FontWeight.bold,
        foreground:
        Paint()
          ..shader = LinearGradient(
            colors: [Colors.black54, Colors.black26],
          ).createShader(const Rect.fromLTWH(100, 100, 0, 0)),
      ),
    );
  }
}
