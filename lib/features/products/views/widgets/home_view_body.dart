import 'package:flutter/material.dart';
import 'package:kutuku/core/widgets/space_widget.dart';
import 'custom_home_app_bar.dart';
class HomeProductsViewBody extends StatelessWidget{
  const HomeProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: const [
          VerticalSpace(value: 2),
          CustomAppBar(),
        ],
      ),
    );
  }
}


