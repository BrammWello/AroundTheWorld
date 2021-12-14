import 'package:around_the_world/components/default_button.dart';
import 'package:around_the_world/screens/sign_up_options/sign_up_options_screen.dart';
import 'package:around_the_world/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:around_the_world/constants.dart';
import 'package:around_the_world/screens/welcome/welcome_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:page_transition/page_transition.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return buildsplashbody(size);
  }

  Container buildsplashbody(Size size) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.15,
                  ),
                  SizedBox(
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 48.0,
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor,
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            "Hi, You",
                            speed: const Duration(milliseconds: 150),
                          ),
                        ],
                        totalRepeatCount: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Image.asset(
                "assets/images/man-working-remotely-and-drinking-coffee.png",
                height: size.height * 0.45,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kMarginAndPaddingSize),
            child: DefaultButton(
              text: "Begin The Journey",
              press: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.bottomToTop,
                    child: SignUpOptions(),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          )
        ],
      ),
    );
  }
}
