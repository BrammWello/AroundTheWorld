import 'package:around_the_world/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:around_the_world/constants.dart';
import 'package:page_transition/page_transition.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/sign_up_screen.jpg"),
                fit: BoxFit.cover),
          ),
          child: Container(
            color: Color.fromRGBO(39, 71, 84, 0.7),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SignUpForm(),
                  SizedBox(
                    height: size.height * 0.3,
                  ),
                  Text(
                    "Register Account",
                    style: headingStyle,
                  ),
                  SizedBox(
                    height: size.height * 0.3,
                  ),
                  Text(
                    "Register Account",
                    style: headingStyle,
                  ),
                  SizedBox(
                    height: size.height * 0.3,
                  ),
                  Text(
                    "Register Account",
                    style: headingStyle,
                  ),
                  SizedBox(
                    height: size.height * 0.3,
                  ),
                  Text(
                    "Register Account",
                    style: headingStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
