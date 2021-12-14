import 'package:around_the_world/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Row(
        children: [
          SizedBox(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 7),
                  ),
                ]),
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
                          child: SvgPicture.asset("assets/icons/swimmer.svg"),
                        ),
                      ),
                      SizedBox(height: kMenuIconSpace),
                      SizedBox(
                        child: Container(
                          height: kMenuIconSize,
                          width: kMenuIconSize,
                          child: SvgPicture.asset("assets/icons/moctail.svg"),
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
            ),
          ),
        ],
      ),
    );
  }
}
