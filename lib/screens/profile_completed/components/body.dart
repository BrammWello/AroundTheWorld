import 'package:around_the_world/components/default_button.dart';
import 'package:around_the_world/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.15,
          ),
          Text(
            "Hurray! That's It!",
            style: headingStyle,
          ),
          Text(
            "We can now begin the journey\nAcross The World",
            textAlign: TextAlign.center,
          ),
          Container(
            height: size.height * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/jumping.png"))),
          ),
          Padding(
            padding: const EdgeInsets.all(kMarginAndPaddingSize),
            child: DefaultButton(
              text: "Let's Start",
              press: () {},
            ),
          )
        ],
      ),
    );
  }
}
