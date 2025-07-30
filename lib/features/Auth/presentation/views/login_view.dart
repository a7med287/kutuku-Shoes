import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kutuku/core/utiles/size_config.dart';
import 'package:kutuku/core/widgets/custom_button.dart';
import 'package:kutuku/core/widgets/space_widget.dart';
import 'package:kutuku/features/Auth/presentation/views/recovery_password.dart';
import 'package:kutuku/features/Auth/presentation/views/sign_up_view.dart';
import 'package:kutuku/features/Auth/presentation/views/widgets/custom_text_field.dart';
import '../../../../core/widgets/custom_bach_icon.dart';
import '../../../../core/widgets/custom_button_with_icon.dart';
import 'widgets/custom_password_text_field.dart';
import 'widgets/text_section.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SafeArea(child: LoginViewBody()));
  }
}

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VerticalSpace(value: 1),
            CustomBackIcon(),
            VerticalSpace(value: 4),
            TextSection(title: 'Hello Again!', subTitle: 'Welcome Back You’ve Been Missed!',),
            VerticalSpace(value: 6),
            Text(
              "Email Address",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            VerticalSpace(value: 1),
            CustomTextField(hintText: 'Email',),
            VerticalSpace(value: 4),
            Text(
              "Password",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            VerticalSpace(value: 1),
            CustomPasswordTextField(),
            VerticalSpace(value: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(()=>RecoveryPasswordView());
                  },
                  child: Text(
                    "Recovery Password",
                    style: TextStyle(
                      color: Color(0xff707B81),
                      fontSize: 13,
                      fontFamily: "AirbnbCereal_W_Bk",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            VerticalSpace(value: 3),
            CustomButton(text: "Sign In", width: SizeConfig.screenWidth!),
            VerticalSpace(value: 3),
            CustomButtonWithIcon(),
            VerticalSpace(value: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t Have An Account?",
                  style: TextStyle(
                    color: Color(0xff707B81),
                    fontSize: 14,
                    fontFamily: "AirbnbCereal_W_Bk",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(()=> SignUpView());
                  },
                  child: Text(
                    " Sign Up for free",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            VerticalSpace(value: 4),
          ],
        ),
      ),
    );
  }
}
