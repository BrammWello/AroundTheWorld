import 'package:around_the_world/components/custom_suffix_icon.dart';
import 'package:around_the_world/components/default_button.dart';
import 'package:around_the_world/components/social_card.dart';
import 'package:around_the_world/constants.dart';
import 'package:around_the_world/screens/log_in/components/log_in_form_fields.dart';
import 'package:around_the_world/screens/sign_up/components/sign_up_form_fields.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.15,
              ),
              Text(
                "Log in to Your Account",
                style: headingStyle,
              ),
              Text(
                "Enter Your credentions or continue\nwith social media",
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(kMarginAndPaddingSize),
                child: LogInFormFields(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  )
                ],
              ),
              SizedBox(height: 20),
              Text(
                "By continuing, you are confirming that you agree \n with out Terms and Conditions",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
