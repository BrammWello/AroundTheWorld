import 'package:around_the_world/screens/welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: size.width * 0.4,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Patrick Hand",
                color: Colors.black,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "Hi, You",
                    speed: const Duration(milliseconds: 200),
                  ),
                ],
                totalRepeatCount: 1,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ),
          Image.asset(
            "assets/images/man-working-remotely-and-drinking-coffee.png",
            height: size.height * 0.45,
          ),
          SizedBox(
            width: size.width * 0.4,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Patrick Hand",
                color: Colors.black,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "No Rush. Am Getting Ready",
                    speed: const Duration(milliseconds: 100),
                  ),
                ],
                totalRepeatCount: 1,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
