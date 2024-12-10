import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:flutter/material.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({super.key});

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Container(
      child: Row(children: [
        Container(
            alignment: Alignment.center,
            width: ResponsiveWidth(context, 500, designScreenWidth: 1536),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(
                      top: ResponsiveHeight(context, 50,
                          designScreenHeight: 729))),
              Container(
                height: ResponsiveHeight(context, 2.5, designScreenHeight: 729),
                width: ResponsiveWidth(context, 150, designScreenWidth: 1536),
                decoration:
                    BoxDecoration(border: Border.all(), color: Colors.black),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: ResponsiveHeight(context, 50,
                          designScreenHeight: 729))),
              Transform.rotate(
                angle: -90 * 3.14 / 180, // لتدوير النص
                child: Text(
                  "FLIO",
                  style: TextStyle(
                    fontSize:
                        ResponsiveHeight(context, 70, designScreenHeight: 729),
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    letterSpacing: 2,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: ResponsiveHeight(context, 100,
                          designScreenHeight: 729))),
              Transform.rotate(
                angle: -90 * 3.14 / 180, // لتدوير النص
                child: Text(
                  "PORTO",
                  style: TextStyle(
                    fontSize:
                        ResponsiveHeight(context, 70, designScreenHeight: 729),
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    letterSpacing: 2,
                  ),
                ),
              ),
              /* Padding(
                padding: EdgeInsets.only(top: ResponsiveHeight(context, 100))),*/
              Row(children: [
                const Spacer(),
                Container(
                  child: Transform.rotate(
                    angle: -90 * 3.14 / 180,
                    child: Text(
                      "CODEVELOBER",
                      style: TextStyle(
                        decorationColor: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: ResponsiveHeight(context, 35,
                            designScreenHeight: 729),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2,
                      ),
                    ),
                    // كلمة "CODEVELOBER"
                  ),
                )
              ]),
              Padding(
                  padding: EdgeInsets.only(
                      top: ResponsiveHeight(context, 200,
                          designScreenHeight: 729))),
              Container(
                //alignment: Alignment.center,
                child: Row(
                  children: [
                    Container(
                        //margin: EdgeInsets.symmetric(horizontal: 200),
                        height: ResponsiveHeight(context, 50,
                            designScreenHeight: 729),
                        width: ResponsiveWidth(context, 50,
                            designScreenWidth: 1536),
                        margin: EdgeInsets.only(
                            left: ResponsiveWidth(context, 150)),
                        child: Image.asset("images/Cs.png")),
                    Text(
                      "Contact us",
                      style: TextStyle(
                        decorationColor: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: ResponsiveHeight(context, 15,
                            designScreenHeight: 729),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ],
                ),
              )
            ])),
        Container(
          height: ResponsiveHeight(context, 740, designScreenHeight: 729),
          width: ResponsiveWidth(context, 1036, designScreenWidth: 1536),
          child: Column(
            children: [
              Container(
                height: ResponsiveHeight(context, 200, designScreenHeight: 729),
                width: ResponsiveWidth(context, 1036, designScreenWidth: 1536),
                //color: const Color.fromARGB(255, 91, 73, 72),
                child: Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.only(left: 50),
                      height: ResponsiveHeight(context, 150,
                          designScreenHeight: 729),
                      width:
                          ResponsiveWidth(context, 10, designScreenWidth: 1536),
                      color: Colors.white,
                    ),
                    //   Padding(padding: EdgeInsets.only(left: 50, top: 80)),
                    Container(
                        //color: Colors.blue,
                        child: Column(
                      children: [
                        Text(
                          "See Our",
                          style: TextStyle(
                              fontSize: ResponsiveHeight(context, 50,
                                  designScreenHeight: 729),
                              color: Colors.black),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: ResponsiveWidth(context, 150,
                                designScreenWidth: 1536),
                          ),
                          child: Text("Team",
                              style: TextStyle(
                                  fontSize: ResponsiveHeight(context, 50,
                                      designScreenHeight: 729),
                                  color:
                                      const Color.fromARGB(255, 249, 227, 27))),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
              Container(
                height: ResponsiveHeight(context, 540, designScreenHeight: 729),
                width: ResponsiveWidth(context, 1036, designScreenWidth: 1536),
                color: const Color.fromARGB(255, 46, 46, 46),
                child: Column(
                  children: [
                    Container(
                      width: ResponsiveWidth(context, 1036,
                          designScreenWidth: 1536),
                      height: ResponsiveHeight(context, 200,
                          designScreenHeight: 729),
                      color: const Color.fromARGB(115, 46, 46, 46),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(),
                              color: const Color.fromARGB(255, 231, 231, 231),
                            ),
                            height: ResponsiveHeight(context, 200,
                                designScreenHeight: 729),
                            width: ResponsiveWidth(context, 150,
                                designScreenWidth: 1536),
                          );
                        },
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: ResponsiveHeight(context, 200,
                                designScreenHeight: 729))),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: ResponsiveWidth(context, 25,
                                    designScreenWidth: 1536)),
                            child: Text("Contact us",
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: ResponsiveHeight(context, 35,
                                      designScreenHeight: 729),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                )),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                            left: ResponsiveWidth(context, 350,
                                designScreenWidth: 1536),
                          )),
                          Container(
                            margin: EdgeInsets.only(
                              left: ResponsiveWidth(context, 25,
                                  designScreenWidth: 1536),
                            ),
                            child: Text("Our websites",
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  fontSize: ResponsiveHeight(context, 35,
                                      designScreenHeight: 729),
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2,
                                )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                      top: ResponsiveHeight(context, 30,
                          designScreenHeight: 729),
                    )),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          Container(
                              height: ResponsiveHeight(context, 100,
                                  designScreenHeight: 729),
                              width: ResponsiveWidth(context, 100,
                                  designScreenWidth: 1536),
                              child: Image.asset("images/whatsapp.png")),
                          Padding(
                            padding: EdgeInsets.only(
                              left: ResponsiveWidth(context, 20,
                                  designScreenWidth: 1536),
                            ),
                          ),
                          Container(
                              height: ResponsiveHeight(context, 100,
                                  designScreenHeight: 1536),
                              width: ResponsiveWidth(context, 100,
                                  designScreenWidth: 729),
                              child: Image.asset("images/linkedin.png")),
                          Padding(
                            padding: EdgeInsets.only(
                              left: ResponsiveWidth(context, 350,
                                  designScreenWidth: 1536),
                            ),
                          ),
                          Container(
                              height: ResponsiveHeight(context, 100,
                                  designScreenHeight: 1536),
                              width: ResponsiveWidth(context, 100,
                                  designScreenWidth: 729),
                              child: Image.asset(
                                  "images/facebook-circular-logo.png")),
                          Padding(
                            padding: EdgeInsets.only(
                              left: ResponsiveWidth(context, 20,
                                  designScreenWidth: 1536),
                            ),
                          ),
                          Container(
                              height: ResponsiveHeight(context, 100,
                                  designScreenHeight: 729),
                              width: ResponsiveWidth(context, 100,
                                  designScreenWidth: 1536),
                              child: Image.asset("images/instagram.png")),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                          ),
                          Container(
                              height: ResponsiveHeight(context, 100,
                                  designScreenHeight: 729),
                              width: ResponsiveWidth(context, 100,
                                  designScreenWidth: 1535),
                              child: Image.asset("images/tiktok.png"))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
/*Padding(
                        padding: EdgeInsets.only(
                            top: ResponsiveHeight(context, 100,
                                designScreenHeight: 1536))),*/
