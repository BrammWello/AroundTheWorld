import 'package:around_the_world/constants.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Around The World",
          style: TextStyle(
            fontSize: 40,
            color: kSecondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        ),
        Image.asset(
          image,
          height: size.height * 0.5,
          width: size.width * 1,
        )
      ],
    );
  }
}
