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
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.2,
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
                              speed: const Duration(milliseconds: 200),
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
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Patrick Hand",
                          color: Colors.black,
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            ScaleAnimatedText(
                              "No Rush. Am Getting Ready.",
                            ),
                            ScaleAnimatedText(
                              "No Rush. Am Getting Ready..",
                            ),
                            ScaleAnimatedText(
                              "No Rush. Am Getting Ready...",
                            ),
                          ],
                          repeatForever: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Container(
                height: size.height * 0.07,
                width: size.width,
                color: kSecondaryColor,
                child: Center(
                  child: FutureBuilder(
                    future: Future.delayed(Duration(seconds: 3)),
                    builder: (BuildContext context,
                        AsyncSnapshot<dynamic> snapshot) {
                      return TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: SplashScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Begin the Journey",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
