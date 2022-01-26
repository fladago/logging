import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:loginflway/Screens/Login/login_screen.dart';
import 'package:loginflway/Screens/Signup/components/background.dart';
import 'package:loginflway/Screens/Signup/components/social_icons.dart';
import 'package:loginflway/Screens/Signup/or_divider.dart';
import 'package:loginflway/conponents/already_have_an_account_check.dart';
import 'package:loginflway/conponents/rounded_button.dart';
import 'package:loginflway/conponents/rounded_input_field.dart';
import 'package:loginflway/conponents/rounded_password_field.dart';
import 'package:loginflway/constants.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(hintText: "Your Email", onChanged: (value) {}),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButton(text: "SIGN UP", press: () {}),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
