import 'package:around_the_world/screens/sign_up/sign_up_screen.dart';
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
        child: Expanded(
          child: Column(
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: size.height * 0.1,
                    width: size.height * 0.1,
                    margin: EdgeInsets.only(left: kMarginAndPaddingSize),
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
              Spacer(
                flex: 1,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: kMarginAndPaddingSize),
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
              Spacer(
                flex: 1,
              ),
              SizedBox(
                child: Container(
                  height: size.height * 0.07,
                  width: size.width,
                  margin: EdgeInsets.only(
                      left: kMarginAndPaddingSize,
                      right: kMarginAndPaddingSize,
                      bottom: kMarginAndPaddingSize),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
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
                                child: SignUp(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign Up",
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
              SizedBox(
                child: Container(
                  height: size.height * 0.07,
                  width: size.width,
                  margin: EdgeInsets.only(
                      left: kMarginAndPaddingSize,
                      right: kMarginAndPaddingSize),
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
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
                                child: null,
                              ),
                            );
                          },
                          child: Text(
                            "Log In",
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
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
