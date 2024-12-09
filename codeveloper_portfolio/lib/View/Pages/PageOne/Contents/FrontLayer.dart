import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';

class FrontLayer extends StatelessWidget {
  const FrontLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width:double.infinity,
        height:double.infinity,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left:ResponsiveWidth(context, 100) ),
              height:double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top:ResponsiveHeight(context, 80) ,
                      right:ResponsiveWidth(context, 160),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Welcome to ",
                      style: TextStyle(
                          fontSize: ResponsiveFontSizeByWidth(context,60),
                          fontWeight: FontWeight.w100,
                          color: Colors.white),
                    ),
                    height:ResponsiveHeight(context,ResponsiveHeight(context, 65)),
                  ),
                  Container(
                    height:ResponsiveHeight(context, 69),
                    child: Container(
                      margin: EdgeInsets.only(right:ResponsiveWidth(context,117)),
                      child: Text(
                        textAlign: TextAlign.start,
                        "codeveloper ",
                        style: TextStyle(
                            fontSize: ResponsiveFontSizeByWidth(context,60),
                            fontWeight: FontWeight.w300,
                            color: Colors.yellow),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:ResponsiveHeight(context, 40), left:ResponsiveWidth(context,60)),
                    width:ResponsiveWidth(context, 450),
                    height:ResponsiveHeight(context, 350),
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
                              ),),
                          margin: EdgeInsets.only(left:ResponsiveWidth(context,30),top:ResponsiveHeight(context,20)),
                          width:ResponsiveWidth(context, 7),
                          height:ResponsiveHeight(context, 280),
                      ),
                        PMaker(horizontal:ResponsiveWidth(context,20),),
                        Container(
                            child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top:ResponsiveHeight(context,50), bottom:ResponsiveHeight(context, 20), right:ResponsiveWidth(context,50)),
                              child: Text(
                                "Mobile Application",
                                style: TextStyle(
                                    fontSize:ResponsiveFontSizeByWidth(context,30), color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                  top:ResponsiveHeight(context,10), bottom:ResponsiveHeight(context, 20), right:ResponsiveWidth(context,30)),
                              child: Text(
                                "Desktop Application",
                                style: TextStyle(
                                    fontSize:ResponsiveFontSizeByWidth(context, 30), color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top:ResponsiveHeight(context,20), right: ResponsiveWidth(context,10)),
                              child: Text(
                                "Website Development",
                                style: TextStyle(
                                    fontSize:ResponsiveFontSizeByWidth(context,30), color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top:ResponsiveHeight(context, 30), left:ResponsiveFontSizeByWidth(context, 10)),
                              child: Text(
                                "Database Maintenance",
                                style: TextStyle(
                                    fontSize:ResponsiveFontSizeByWidth(context,30), color: Colors.white),
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            PMaker(horizontal: 90,),
            Expanded(
              child: Container(
                height:ResponsiveHeight(context, 800),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 270,right: 240),
                      child: Text(
                        "CODE",
                        style: TextStyle(
                            fontSize: ResponsiveFontSizeByWidth(context,60),
                            fontWeight: FontWeight.w700,
                            color: UsedColors.yellow),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:ResponsiveWidth(context,270)),
                      child: Row(
                        children: [
                          Text(
                            "deve",
                            style: TextStyle(
                                fontSize: ResponsiveFontSizeByWidth(context,60),
                                fontWeight: FontWeight.w700,
                                color: UsedColors.yellow),
                          ),
                          Text(
                            "loper",
                            style: TextStyle(
                                fontSize: ResponsiveFontSizeByWidth(context,60),
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:ResponsiveWidth(context, 400),top:ResponsiveHeight(context,170)),
                      width:ResponsiveWidth(context, 400),
                      height:ResponsiveHeight(context, 100),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height:ResponsiveHeight(context, 90),
                          width:ResponsiveWidth(context, 90),
                            padding: EdgeInsets.all(20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("images/tiktok.png"),
                            ),
                          ),
                          Container(
                            height:ResponsiveHeight(context, 90),
                          width:ResponsiveWidth(context, 90),
                            padding: EdgeInsets.all(20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("images/instagram.png"),
                            ),
                          ),
                          Container(
                            height:ResponsiveHeight(context, 90),
                          width:ResponsiveWidth(context, 90),
                            padding: EdgeInsets.all(20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("images/facebook-circular-logo.png"),
                            ),
                          ),
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
