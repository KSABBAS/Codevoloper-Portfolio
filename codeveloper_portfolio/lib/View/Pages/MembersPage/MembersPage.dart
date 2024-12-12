import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/membersData.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
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
      height: double.infinity,
      width: double.infinity,
      child: Row(
        children: [
          CMaker(
            height: PageHeight(context),
            width: ResponsiveWidth(context, 438),
            child: Column(
              children: [
                PMaker(
                  vertical: ResponsiveHeight(context, 10),
                ),
                CMaker(
                  color: UsedColors.background,
                  height: ResponsiveHeight(context, 5),
                  width: ResponsiveWidth(context, 200),
                ),
                PMaker(
                  vertical: ResponsiveHeight(context, 50),
                ),
                Transform.rotate(
                  angle: -90 * 3.14 / 180, // لتدوير النص
                  child: Text(
                    "FLIO",
                    style: TextStyle(
                      fontSize: ResponsiveFontSizeByHeight(context, 115),
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Padding(
                    padding:
                        EdgeInsets.only(top: ResponsiveHeight(context, 160))),
                Transform.rotate(
                  angle: -90 * 3.14 / 180, // لتدوير النص
                  child: Text(
                    "PORTO",
                    style: TextStyle(
                      fontSize: ResponsiveFontSizeByHeight(context, 115),
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Padding(
                    padding:
                        EdgeInsets.only(top: ResponsiveHeight(context, 160))),
                Container(
                  //alignment: Alignment.center,
                  child: Row(
                    children: [
                      Spacer(),
                      Container(
                          //margin: EdgeInsets.symmetric(horizontal: 200),
                          height: ResponsiveHeight(
                            context,
                            50,
                          ),
                          width: ResponsiveWidth(
                            context,
                            50,
                          ),
                          child: Image.asset("images/Cs.png")),
                      Padding(
                          padding: EdgeInsets.only(
                              left: ResponsiveWidth(context, 20))),
                      Text(
                        "Contact us",
                        style: TextStyle(
                          decorationColor: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: ResponsiveHeight(
                            context,
                            20,
                          ),
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2,
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                )
              ],
            ),
          ),
          CMaker(
            color: UsedColors.background,
            height: PageHeight(context),
            width: ResponsiveWidth(context, 1098),
            child: Column(
              children: [
                Container(
                  height: ResponsiveHeight(
                    context,
                    200,
                  ),
                  width: ResponsiveWidth(
                    context,
                    1036,
                  ),
                  //color: const Color.fromARGB(255, 91, 73, 72),
                  child: Row(
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 50),
                        height: ResponsiveHeight(context, 150),
                        width: ResponsiveWidth(context, 5),
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
                                fontSize:
                                    ResponsiveFontSizeByHeight(context, 50),
                                color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: ResponsiveWidth(context, 150)),
                            child: Text("Team",
                                style: TextStyle(
                                    fontSize:
                                        ResponsiveFontSizeByHeight(context, 50),
                                    color: const Color.fromARGB(
                                        255, 249, 227, 27))),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                Container(
                    height: ResponsiveHeight(
                      context,
                      540,
                    ),
                    width: ResponsiveWidth(
                      context,
                      1036,
                    ),
                    color: const Color.fromARGB(255, 46, 46, 46),
                    child: Column(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                top: ResponsiveHeight(context, 20,
                                   ))),
                        Container(
                          width: ResponsiveWidth(context, 1036,
                             ),
                          height: ResponsiveHeight(context, 300,
                             ),
                          color: const Color.fromARGB(115, 46, 46, 46),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: MemberClass.getMemberList().length,
                            itemBuilder: (context, index) {
                              return  InkWell(
                                onTap: () {
                                  print("name : ${MemberClass.getMemberList()[index][1]}");
                                  print("name : ${MemberClass.getMemberList()[index][2]}");
                                },
                                child: Container(
                                  margin: EdgeInsets.only( left:(index==0)?20:10 ,right: (index==19)?20:10 ),
                                  child:ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child:Image.network(
                                      MemberClass.getMemberList()[index][0],
                                      fit: BoxFit.cover,
                                    ),) ,
                                  height: ResponsiveHeight(context, 300,
                                     ),
                                  width: ResponsiveWidth(context, 200,
                                     ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: ResponsiveHeight(context, 40,
                                   ))),
                        CMaker(
                          width: ResponsiveWidth(
                          context,
                          1036,
                        ),
                          child: Row(
                            children: [
                              Spacer(),
                              CMaker(
                                width:ResponsiveWidth(context,300),
                                child: Column(
                                  children: [
                                    CMaker(
                                      alignment: Alignment.center,
                                      child: Text("Contact us",
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: ResponsiveWidth(
                                              context,
                                            ResponsiveFontSizeByHeight(context,40),
                                            ),
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2,
                                          )),
                                    ),
                                    Padding(
                                  padding: EdgeInsets.only(
                                      top: ResponsiveHeight(context, 20,
                                         ))),
                                    CMaker(child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Container(
                                        height: ResponsiveHeight(context, 60,
                                           ),
                                        width: ResponsiveWidth(context, 60,
                                           ),
                                        child: Image.asset("images/whatsapp.png")),
                                    Container(
                                        height: ResponsiveHeight(context, 60,
                                            designScreenHeight: 1536),
                                        width: ResponsiveWidth(context, 60,
                                            designScreenWidth: 729),
                                        child: Image.asset("images/linkedin.png")),
                                  ],),)
                                  ],
                                ),
                              ),
                              Spacer(flex: 4,),
                              CMaker(
                                width:ResponsiveWidth(context,300),
                                child: Column(
                                  children: [
                                    CMaker(
                                      alignment: Alignment.center,
                                      child: Text("Our Media",
                                          style: TextStyle(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: ResponsiveWidth(
                                              context,
                                            ResponsiveFontSizeByHeight(context,40),
                                            ),
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2,
                                          )),
                                    ),
                                    Padding(
                                  padding: EdgeInsets.only(
                                      top: ResponsiveHeight(context, 20,
                                         ))),
                                    CMaker(child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [Container(
                                        height: ResponsiveHeight(context, 60,
                                           ),
                                        width: ResponsiveWidth(context, 60,
                                           ),
                                        child: Image.asset("images/whatsapp.png")),
                                    Container(
                                        height: ResponsiveHeight(context, 60,
                                            designScreenHeight: 1536),
                                        width: ResponsiveWidth(context, 60,
                                            designScreenWidth: 729),
                                        child: Image.asset("images/linkedin.png")),
                                    Container(
                                        height: ResponsiveHeight(context, 60,
                                            designScreenHeight: 1536),
                                        width: ResponsiveWidth(context, 60,
                                            designScreenWidth: 729),
                                        child: Image.asset("images/linkedin.png")),
                                  ],),)
                                  ],
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ],
                    )
                    ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
