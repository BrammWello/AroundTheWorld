import 'package:around_the_world/components/custom_suffix_icon.dart';
import 'package:around_the_world/components/social_card.dart';
import 'package:around_the_world/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            height: size.height,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 7),
                    ),
                  ],
                ),
                height: size.height,
                width: size.width * 0.15,
                child: Container(
                  color: kPrimaryLightColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/avatar_image.png"),
                          backgroundColor: kSecondaryColor,
                        ),
                      ),
                      SizedBox(height: kMenuIconSpace),
                      SizedBox(
                        child: Container(
                          height: kMenuIconSize,
                          width: kMenuIconSize,
                          child: SvgPicture.asset(
                              "assets/icons/color-palette.svg"),
                        ),
                      ),
                      SizedBox(height: kMenuIconSpace),
                      SizedBox(
                        child: Container(
                          height: kMenuIconSize,
                          width: kMenuIconSize,
                          child: SvgPicture.asset(
                              "assets/icons/american-football.svg"),
                        ),
                      ),
                      SizedBox(height: kMenuIconSpace),
                      SizedBox(
                        child: Container(
                          height: kMenuIconSize,
                          width: kMenuIconSize,
                          child: SvgPicture.asset(
                            "assets/icons/swimmer.svg",
                            color: kSecondaryLightColor,
                          ),
                        ),
                      ),
                      SizedBox(height: kMenuIconSpace),
                      SizedBox(
                        child: Container(
                          height: kMenuIconSize,
                          width: kMenuIconSize,
                          child: SvgPicture.asset(
                            "assets/icons/moctail.svg",
                          ),
                        ),
                      ),
                      SizedBox(height: kMenuIconSpace),
                      SizedBox(
                        child: Container(
                          height: kMenuIconSize,
                          width: kMenuIconSize,
                          child: SvgPicture.asset("assets/icons/trees.svg"),
                        ),
                      ),
                      SizedBox(height: kMenuIconSpace),
                      SizedBox(
                        child: Container(
                          height: kMenuIconSize,
                          width: kMenuIconSize,
                          child: SvgPicture.asset("assets/icons/spoon.svg"),
                        ),
                      ),
                      SizedBox(height: kMenuIconSpace),
                      SizedBox(
                        child: Container(
                          height: kMenuIconSize,
                          width: kMenuIconSize,
                          child: SvgPicture.asset("assets/icons/pin.svg"),
                        ),
                      ),
                      SizedBox(height: kMenuIconSpace),
                      SizedBox(
                        child: Container(
                          height: kMenuIconSize,
                          width: kMenuIconSize,
                          child: SvgPicture.asset("assets/icons/magnifier.svg"),
                        ),
                      ),
                      SizedBox(height: kMenuIconSpace),
                      SizedBox(
                        child: Container(
                          height: kMenuIconSize,
                          width: kMenuIconSize,
                          child: SvgPicture.asset("assets/icons/setting.svg"),
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            child: Container(
              height: size.height,
              width: size.width * 0.85,
              color: kPrimaryColor.withOpacity(0.1),
              child: Container(
                padding: EdgeInsets.all(kMarginAndPaddingHomepageSize),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Text(
                      "Swimming",
                      style: headingStyle,
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Container(
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              kSecondaryLightColor,
                              kSecondaryColor,
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/swimmer.svg",
                                    color: kPrimaryColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      "Swimming Sites Visited \n1 This week",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search Place",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: InputBorder.none,
                          prefixIcon: CustomSuffixIcon(
                            svgIcon: "assets/icons/magnifier.svg",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: size.height * 0.07,
                                  width: size.height * 0.07,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/archive.svg",
                                      color: kPrimaryLightColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  "My Shares",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: size.height * 0.07,
                                    width: size.height * 0.07,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.2),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/icons/link.svg",
                                        color: kPrimaryLightColor,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Following",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kPrimaryColor),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  height: size.height * 0.07,
                                  width: size.height * 0.07,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: SvgPicture.asset(
                                      "assets/icons/add-new.svg",
                                      color: kPrimaryLightColor,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Add Place",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text("Discover more swimming places"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
