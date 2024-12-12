import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/ContactsData.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';

class FrontLayer extends StatelessWidget {
  const FrontLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: ResponsiveWidth(context, 100)),
            height: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: ResponsiveHeight(context, 100),
                    right: ResponsiveWidth(context, 160),
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Welcome to ",
                    style: TextStyle(
                        fontSize: ResponsiveFontSizeByHeight(context, 50),
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                ),
                Container(
                  child: Container(
                    margin:
                        EdgeInsets.only(right: ResponsiveWidth(context, 117)),
                    child: Text(
                      textAlign: TextAlign.start,
                      "codeveloper ",
                      style: TextStyle(
                          fontSize: ResponsiveFontSizeByHeight(context, 50),
                          fontWeight: FontWeight.w300,
                          color: Colors.yellow),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: ResponsiveHeight(context, 70),
                      left: ResponsiveWidth(context, 60)),
                  width: ResponsiveWidth(context, 450),
                  height: ResponsiveHeight(context, 350),
                  color: const Color(0xFF333333),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              UsedColors.Gray,
                              UsedColors.yellow,
                              UsedColors.Gray,
                            ],
                            stops: [0.1, 0.6, 1.0],
                          ),
                        ),
                        margin: EdgeInsets.only(
                            left: ResponsiveWidth(context, 30),
                            top: ResponsiveHeight(context, 35),
                            bottom: ResponsiveHeight(context, 35)),
                        width: ResponsiveWidth(context, 7),
                        height: ResponsiveHeight(context, 280),
                      ),
                      PMaker(
                        horizontal: ResponsiveWidth(context, 20),
                      ),
                      Container(
                          child: Column(
                        children: [
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(
                                top: ResponsiveHeight(context, 10),
                                bottom: ResponsiveHeight(context, 20),
                                right: ResponsiveWidth(context, 50)),
                            child: Text(
                              "Mobile Application",
                              style: TextStyle(
                                  fontSize:
                                      ResponsiveFontSizeByHeight(context, 30),
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(
                                top: ResponsiveHeight(context, 10),
                                bottom: ResponsiveHeight(context, 20),
                                right: ResponsiveWidth(context, 30)),
                            child: Text(
                              "Desktop Application",
                              style: TextStyle(
                                  fontSize:
                                      ResponsiveFontSizeByHeight(context, 30),
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(
                                top: ResponsiveHeight(context, 20),
                                right: ResponsiveWidth(context, 10)),
                            child: Text(
                              "Website Development",
                              style: TextStyle(
                                  fontSize:
                                      ResponsiveFontSizeByHeight(context, 30),
                                  color: Colors.white),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                top: ResponsiveHeight(context, 30),
                                left: ResponsiveFontSizeByWidth(context, 10)),
                            child: Text(
                              "Database Maintenance",
                              style: TextStyle(
                                  fontSize:
                                      ResponsiveFontSizeByHeight(context, 30),
                                  color: Colors.white),
                            ),
                          ),
                          Spacer(),
                        ],
                      ))
                    ],
                  ),
                )
              ],
            ),
          ),
          PMaker(
            horizontal: ResponsiveWidth(context, 90),
          ),
          Expanded(
            child: Container(
              height: ResponsiveHeight(context, 800),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveHeight(context, 270),
                        right: ResponsiveWidth(context, 240)),
                    child: Text(
                      "CODE",
                      style: TextStyle(
                          fontSize: ResponsiveFontSizeByWidth(context, 60),
                          fontWeight: FontWeight.w700,
                          color: UsedColors.yellow),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: ResponsiveWidth(context, 270)),
                    child: Row(
                      children: [
                        Text(
                          "deve",
                          style: TextStyle(
                              fontSize: ResponsiveFontSizeByWidth(context, 60),
                              fontWeight: FontWeight.w700,
                              color: UsedColors.yellow),
                        ),
                        Text(
                          "loper",
                          style: TextStyle(
                              fontSize: ResponsiveFontSizeByWidth(context, 60),
                              fontWeight: FontWeight.w700,
                              color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: ResponsiveWidth(context, 400),
                        top: ResponsiveHeight(context, 170)),
                    width: ResponsiveWidth(context, 400),
                    height: ResponsiveHeight(context, 110),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            LaunchURL(
                                url:ContactClass.getContactLink("tiktok")
                                );
                          },
                          child: Container(
                            height: ResponsiveHeight(context, 60),
                            child: Image.asset("images/tiktok.png"),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              LaunchURL(
                                url:ContactClass.getContactLink("instagram")
                                );
                            },
                            child: Container(
                              height: ResponsiveHeight(context, 60),
                              child: Image.asset("images/instagram.png"),
                            )),
                        InkWell(
                            onTap: () {
                              LaunchURL(
                                url:ContactClass.getContactLink("facebook")
                                );
                            },
                            child: Container(
                              height: ResponsiveHeight(context, 60),
                              child: Image.asset(
                                  "images/facebook-circular-logo.png"),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
