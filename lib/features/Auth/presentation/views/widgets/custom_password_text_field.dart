import 'package:flutter/material.dart';

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({super.key});

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isVisible,
      cursorColor: Colors.black,
      style: TextStyle(
        fontFamily: "AirbnbCereal_W_Bk"
      ),
      decoration: InputDecoration(

        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            icon:
                isVisible
                    ? Icon(Icons.visibility_off_outlined)
                    : Icon(Icons.visibility_outlined),
          ),
        ),
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.grey),
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
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
