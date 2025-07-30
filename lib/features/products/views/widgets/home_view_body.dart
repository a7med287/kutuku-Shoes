import 'package:flutter/material.dart';
import 'custom_home_app_bar.dart';
class HomeProductsViewBody extends StatelessWidget{
  const HomeProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
      ],
    );
  }
}


