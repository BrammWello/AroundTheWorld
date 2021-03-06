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
              child: SingleChildScrollView(
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
                          gradient: orangeColorGradient,
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
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Discover more swimming places",
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Row(
                                children: [
                                  Container(
                                    height: size.height * 0.45,
                                    width: size.width * 0.5,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.3,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              topLeft: Radius.circular(8),
                                            ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/swimming_1.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(8.0),
                                          height: size.height * 0.15,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            color: kPrimaryLightColor
                                                .withOpacity(0.1),
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              RichText(
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                text: TextSpan(
                                                  style: DefaultTextStyle.of(
                                                          context)
                                                      .style,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text:
                                                          "#WatamuDeepSeaDiving\n",
                                                      style: hashTagStyle,
                                                    ),
                                                    TextSpan(
                                                        style: cardTextStyle,
                                                        text:
                                                            "Immerse yourself into a very serene environemnt and deep dive into the wonders of the world in this amazing adventure"),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.favorite_border,
                                                          color:
                                                              kSecondaryColor,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .message_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Icon(
                                                          Icons.share_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.05,
                                  ),
                                  Container(
                                    height: size.height * 0.45,
                                    width: size.width * 0.5,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.3,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              topLeft: Radius.circular(8),
                                            ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/swimming_2.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(8.0),
                                          height: size.height * 0.15,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            color: kPrimaryLightColor
                                                .withOpacity(0.1),
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              RichText(
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                text: TextSpan(
                                                  style: DefaultTextStyle.of(
                                                          context)
                                                      .style,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "#WhaleRider\n",
                                                      style: hashTagStyle,
                                                    ),
                                                    TextSpan(
                                                        style: cardTextStyle,
                                                        text:
                                                            "Get a thrilling whale riding eperience in the Mombasa coast water"),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.favorite_border,
                                                          color:
                                                              kSecondaryColor,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .message_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Icon(
                                                          Icons.share_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.05,
                                  ),
                                  Container(
                                    height: size.height * 0.45,
                                    width: size.width * 0.5,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.3,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              topLeft: Radius.circular(8),
                                            ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/swimming_3.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(8.0),
                                          height: size.height * 0.15,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            color: kPrimaryLightColor
                                                .withOpacity(0.1),
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              RichText(
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                text: TextSpan(
                                                  style: DefaultTextStyle.of(
                                                          context)
                                                      .style,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text:
                                                          "#CarnivoreWaterWorld\n",
                                                      style: hashTagStyle,
                                                    ),
                                                    TextSpan(
                                                        style: cardTextStyle,
                                                        text:
                                                            "Immerse yourself into a very serene environemnt and deep dive into the wonders of the world in this amazing adventure"),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.favorite_border,
                                                          color:
                                                              kSecondaryColor,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .message_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Icon(
                                                          Icons.share_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.05,
                                  ),
                                  Container(
                                    height: size.height * 0.45,
                                    width: size.width * 0.5,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.3,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              topLeft: Radius.circular(8),
                                            ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/swimming_4.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(8.0),
                                          height: size.height * 0.15,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            color: kPrimaryLightColor
                                                .withOpacity(0.1),
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              RichText(
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                text: TextSpan(
                                                  style: DefaultTextStyle.of(
                                                          context)
                                                      .style,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "#PwaniSunsets\n",
                                                      style: hashTagStyle,
                                                    ),
                                                    TextSpan(
                                                        style: cardTextStyle,
                                                        text:
                                                            "Immerse yourself into a very serene environemnt and deep dive into the wonders of the world in this amazing adventure"),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.favorite_border,
                                                          color:
                                                              kSecondaryColor,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .message_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Icon(
                                                          Icons.share_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.05,
                                  ),
                                  Container(
                                    height: size.height * 0.45,
                                    width: size.width * 0.5,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.3,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              topLeft: Radius.circular(8),
                                            ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/swimming_5.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(8.0),
                                          height: size.height * 0.15,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            color: kPrimaryLightColor
                                                .withOpacity(0.1),
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              RichText(
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                text: TextSpan(
                                                  style: DefaultTextStyle.of(
                                                          context)
                                                      .style,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text:
                                                          "#NyahururuWaterfalls\n",
                                                      style: hashTagStyle,
                                                    ),
                                                    TextSpan(
                                                        style: cardTextStyle,
                                                        text:
                                                            "Immerse yourself into a very serene environemnt and deep dive into the wonders of the world in this amazing adventure"),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.favorite_border,
                                                          color:
                                                              kSecondaryColor,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .message_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Icon(
                                                          Icons.share_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.05,
                                  ),
                                  Container(
                                    height: size.height * 0.45,
                                    width: size.width * 0.5,
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.3,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(8),
                                              topLeft: Radius.circular(8),
                                            ),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/swimming_6.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(8.0),
                                          height: size.height * 0.15,
                                          width: size.width * 0.5,
                                          decoration: BoxDecoration(
                                            color: kPrimaryLightColor
                                                .withOpacity(0.1),
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(8),
                                              bottomLeft: Radius.circular(8),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              RichText(
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                text: TextSpan(
                                                  style: DefaultTextStyle.of(
                                                          context)
                                                      .style,
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                      text: "#PiratesBeach\n",
                                                      style: hashTagStyle,
                                                    ),
                                                    TextSpan(
                                                        style: cardTextStyle,
                                                        text:
                                                            "Immerse yourself into a very serene environemnt and deep dive into the wonders of the world in this amazing adventure"),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: size.height * 0.02,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.favorite,
                                                          color: kPrimaryColor,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .message_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Icon(
                                                          Icons.share_outlined,
                                                          color: Colors.black,
                                                          size: 24.0,
                                                          semanticLabel:
                                                              'Text to announce in accessibility modes',
                                                        ),
                                                        Text("998"),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.05,
                                  ),
                                ],
                              ),
                            ),
                          ),
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
