import 'package:flutter/material.dart';
import 'package:kutuku/core/utiles/size_config.dart';
import 'package:kutuku/core/widgets/custom_button.dart';
import 'package:kutuku/core/widgets/space_widget.dart';
import 'package:kutuku/features/Auth/presentation/views/widgets/custom_text_field.dart';
import '../../../../core/widgets/custom_bach_icon.dart';


class RecoveryPasswordView extends StatelessWidget {
  const RecoveryPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SafeArea(child: RecoveryPasswordViewBody()));
  }
}

class RecoveryPasswordViewBody extends StatelessWidget {
  const RecoveryPasswordViewBody({super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Recovery Password",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Please Enter Your Email Address To",
                  style: TextStyle(
                      color: Color(0xff707B81),
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      fontFamily: "AirbnbCereal_W_Bk"
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Recieve a Verification Code",
                  style: TextStyle(
                      color: Color(0xff707B81),
                      fontSize: 16,
                      fontWeight: FontWeight.w100,
                      fontFamily: "AirbnbCereal_W_Bk"
                  ),
                ),
              ],
            ),
            VerticalSpace(value: 6),
            Text(
              "Email Address",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            VerticalSpace(value: 1),
            CustomTextField(hintText: 'Email'),
            VerticalSpace(value: 6),
            CustomButton(text: "Continue", width: SizeConfig.screenWidth!)
          ],
        ),
      ),
    );
  }
}
