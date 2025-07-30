import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackIcon extends StatelessWidget{
  const CustomBackIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       // Navigator.pop(context);
        Get.back();
      },
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white
        ),
        child: Center(
          child: Icon(Icons.arrow_back_ios_new_rounded,color: Color(0xff1A2530),size: 18,),
        ),
      ),
    );
  }
}
