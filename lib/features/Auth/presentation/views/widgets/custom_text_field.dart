import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontFamily: "AirbnbCereal_W_Bk"
        ),
        fillColor: Colors.white,
        filled: true,
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),

      ),

    );
  }
  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
        borderSide: BorderSide(
            color: Colors.white
        )
    );
  }
}
