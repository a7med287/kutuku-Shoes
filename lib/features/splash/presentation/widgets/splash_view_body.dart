import 'package:flutter/material.dart';
class SplashViewBody extends StatelessWidget{
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Kutuku",style: TextStyle(
            fontSize: 52,
            fontFamily: "PublicaPlay",
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          Text("Any shopping just from home",style: TextStyle(
                 fontSize: 18,
              color: Colors.white
          ),)
        ],
      ),
    );
  }
}
