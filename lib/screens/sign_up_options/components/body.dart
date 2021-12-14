import 'package:around_the_world/components/default_button.dart';
import 'package:around_the_world/components/default_button_with_color.dart';
import 'package:around_the_world/screens/log_in/log_in_screen.dart';
import 'package:around_the_world/screens/sign_up/sign_up_screen.dart';
import 'package:around_the_world/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:around_the_world/constants.dart';
import 'package:page_transition/page_transition.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/sign_up_screen.jpg"),
            fit: BoxFit.cover),
      ),
      child: Container(
        height: size.height,
        width: size.width,
        color: Color.fromRGBO(39, 71, 84, 0.7),
        child: Padding(
          padding: const EdgeInsets.all(kMarginAndPaddingSize),
          child: Column(
            children: <Widget>[
              Spacer(),
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: size.height * 0.07,
                    width: size.height * 0.07,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/app_icon.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Expanded(
                    child: Container(
                      child: Text(
                        "Let's explore \nendless adventures",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              DefaultButton(
                text: "Sign Up",
                press: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      child: SplashScreen(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              DefaultButtonWithColor(
                text: "Sign In",
                press: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      child: LogIn(),
                    ),
                  );
                },
                btnColor: kPrimaryLightColor,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
