import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginflway/Screens/Login/login_screen.dart';
import 'package:loginflway/Screens/Signup/signup_screen.dart';
import 'package:loginflway/Screens/Welcome/components/background.dart';
import 'package:loginflway/conponents/rounded_button.dart';
import 'package:loginflway/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //This size provide us total and width of uor screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "WELCOME TO EDU",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const LoginScreen())));
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const SignUpScreen())));
              },
            ),
          ],
        ),
      ),
    );
  }
}
