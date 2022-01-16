import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF264653);
const kPrimaryLightColor = Color(0xFF2a9d8f);
const kAccentColor = Color(0xFFe9c46a);
const kSecondaryLightColor = Color(0xFFf4a261);
const kSecondaryColor = Color(0xFFe76f51);

const orangeColorGradient = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomLeft,
  colors: [
    kSecondaryLightColor,
    kSecondaryColor,
  ],
);

const kAnimationDuration = Duration(milliseconds: 200);

const double kMarginAndPaddingSize = 20;
const double kMarginAndPaddingHomepageSize = 20;

const double kMenuIconSize = 30;
const double kMenuIconSpace = 40;

//heading styles
final headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

//Homepage card styles
final hashTagStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);

final cardTextStyle = TextStyle(
  fontSize: 12,
  color: Colors.black,
);

//Form error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
