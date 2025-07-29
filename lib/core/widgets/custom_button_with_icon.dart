import 'package:flutter/material.dart';
import 'package:kutuku/core/widgets/space_widget.dart';
import '../utiles/size_config.dart';
class CustomButtonWithIcon extends StatelessWidget{
  const CustomButtonWithIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/google_icon.png",height: 30,),
          HorizontalSpace(value: 1),
          Text(
            "Sign in with google",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
