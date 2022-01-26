import 'package:flutter/material.dart';
import 'package:loginflway/constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(children: [
        buildDivider(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "OR",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        buildDivider(),
      ]),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}
