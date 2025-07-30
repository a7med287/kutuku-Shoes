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
          VerticalSpace(value: 4),
          CustomSearchTextField(),
        ],
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget{
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: "Looking for shoes",
        hintStyle: TextStyle(
          color: Color(0xff707B81)
        ),
        prefixIcon: Icon(Icons.search_rounded,color: Color(0xff707B81),),
        fillColor: Colors.white,
        filled: true,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder()
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(color: Colors.white),
      );
  }
}


