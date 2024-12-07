import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
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
              margin: EdgeInsets.only(left: 100),
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 65,
                    margin: EdgeInsets.only(
                      top: 80,
                      right: 160,
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Welcome to ",
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w100,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 69,
                    child: Container(
                      margin: EdgeInsets.only(right: 117),
                      child: Text(
                        textAlign: TextAlign.start,
                        "codeveloper ",
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w300,
                            color: Colors.yellow),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 60),
                    width: 450,
                    height: 350,
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
                          margin: EdgeInsets.only(left: 30,top: 20),
                          width: 7,
                          height: 280,
                        ),
                        PMaker(horizontal: 20,),
                        Container(
                            child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  top: 50, bottom: 20, right: 50),
                              child: Text(
                                "Mobile Application",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 20, right: 30),
                              child: Text(
                                "Desktop Application",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(top: 20, right: 10),
                              child: Text(
                                "Website Development",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30, left: 10),
                              child: Text(
                                "Database Maintenance",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
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
                height: PageHeight(context),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 270,right: 240),
                      child: Text(
                        "CODE",
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w700,
                            color: UsedColors.yellow),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 270),
                      child: Row(
                        children: [
                          Text(
                            "deve",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w700,
                                color: UsedColors.yellow),
                          ),
                          Text(
                            "loper",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 400,top: 170),
                      width: 400,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            padding: EdgeInsets.all(20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset("images/tiktok.png"),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            padding: EdgeInsets.all(20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("images/instagram.png"),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
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
