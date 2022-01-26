import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginflway/Screens/Login/components/background.dart';
import 'package:loginflway/conponents/already_have_an_account_check.dart';
import 'package:loginflway/conponents/rounded_button.dart';
import 'package:loginflway/conponents/rounded_input_field.dart';
import 'package:loginflway/conponents/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(text: "LOGIN", press: () {}),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: (() {}),
            ),
          ],
        ),
      ),
    );
  }
}