import 'package:around_the_world/constants.dart';
import 'package:around_the_world/screens/complete_profile/components/complete_profile_form.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.1),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              Text(
                "Complete your details to continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: size.height * 0.05),
              CompleteProfileForm(),
              SizedBox(height: size.height * 0.03),
              Text(
                "By continuing, you confirm that you agree \nwith our Terms and Conditions",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
