import 'package:flutter/material.dart';
import 'package:loginflway/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function() press;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Account?" : "Already have an Account?",
          style: const TextStyle(color: kPrimaryColor),
        ),
        const SizedBox(width: 20),
        GestureDetector(
          onTap: press,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryLightColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                login ? "Sign Up" : "Sign In",
                style: const TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
