import 'dart:html';

import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/ContactsData.dart';
import 'package:codeveloper_portfolio/Data/Databse_Service.dart';
import 'package:codeveloper_portfolio/Data/ProjectsData.dart';
import 'package:codeveloper_portfolio/Data/membersData.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({super.key});

  @override
  State<MembersPage> createState() => _MembersPageState();
}

bool isHovered = false;
int? selectedToHover;

class _MembersPageState extends State<MembersPage> {
  Future<void> uploadInitialData() async {
    final db = DatabaseService();
    await db.uploadInitialData();
    // Refresh the data after upload
    await Future.wait([
      MemberClass.fetchMembers(),
      ProjectClass.fetchProjects(),
      ContactClass.fetchContacts(),
    ]);
  }
  
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return SizedBox(
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
                InkWell(
                  onTap: () {
                    LaunchURL(
                        url: ContactClass
                            .getContactLink(
                                "whatsApp")!);
                  },
                  child: SizedBox(
                    width: ResponsiveWidth(context,250),
                    child: Row(
                      children: [
                        const Spacer(),
                        SizedBox(
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
                        const Spacer(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          CMaker(
            height: PageHeight(context),
            width: ResponsiveWidth(context, 1098),
            child: Column(
              children: [
                SizedBox(
                  height: ResponsiveHeight(
                    context,
                    200,
                  ),
                  width: ResponsiveWidth(
                    context,
                    1036,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: ResponsiveHeight(context, 150),
                        width: ResponsiveWidth(context, 5),
                        color: Colors.white,
                      ),
                      Container(
                          child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left:ResponsiveWidth(context,20),top: ResponsiveHeight(context, 20),
                                right: ResponsiveWidth(context, 100)),
                            child: Text(
                            "See Our",
                            style: TextStyle(
                                fontSize:
                                    ResponsiveFontSizeByHeight(context, 50),
                                color: Colors.black),
                          )),
                          Text("Team",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                    fontSize:
                                        ResponsiveFontSizeByHeight(context, 70),
                                    color: const Color.fromARGB(
                                        255, 249, 227, 27))),
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
                                top: ResponsiveHeight(
                          context,
                          20,
                        ))),
                        Container(
                          width: ResponsiveWidth(
                            context,
                            1036,
                          ),
                          height: ResponsiveHeight(
                            context,
                            300,
                          ),
                          color: const Color.fromARGB(115, 46, 46, 46),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: MemberClass.getMemberList().length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {},
                                onHover: (value) {
                                  if (value) {
                                    selectedToHover = index;
                                    setState(() {});
                                  } else {
                                    selectedToHover = null;
                                    setState(() {});
                                  }
                                },
                                child: CMaker(
                                  margin: EdgeInsets.only(
                                    left: (index == 0) ? 20 : 10,
                                    right: (index == 19) ? 20 : 10,
                                  ),
                                  height: ResponsiveHeight(context, 300),
                                  width: ResponsiveWidth(context, 250),
                                  child: Stack(
                                    children: [
                                      CMaker(
                                        circularRadius: 20,
                                        height: ResponsiveHeight(context, 300),
                                        width: ResponsiveWidth(context, 250),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: Image.network(
                                            MemberClass.getMemberList()[index]
                                                [0],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      AnimatedOpacity(
                                        opacity:
                                            (index == selectedToHover) ? 1 : 0,
                                        duration: const Duration(milliseconds: 400),
                                        child: CMaker(
                                          padding: EdgeInsets.symmetric(
                                              vertical:
                                                  ResponsiveHeight(context, 20),
                                              horizontal:
                                                  ResponsiveWidth(context, 20)),
                                          height:
                                              ResponsiveHeight(context, 300),
                                          width: ResponsiveWidth(context, 250),
                                          circularRadius: 20,
                                          color: UsedColors.HoverColor,
                                          child: Column(
                                            children: [
                                              const Spacer(),
                                              const Spacer(),
                                              TMaker(
                                                text: MemberClass
                                                    .getMemberList()[index][1],
                                                fontSize:
                                                    ResponsiveFontSizeByWidth(
                                                        context, 30),
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                              const Spacer(),
                                              TMaker(
                                                text: MemberClass
                                                    .getMemberList()[index][2],
                                                fontSize:
                                                    ResponsiveFontSizeByWidth(
                                                        context, 20),
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                              const Spacer(),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                top: ResponsiveHeight(
                          context,
                          40,
                        ))),
                        CMaker(
                          width: ResponsiveWidth(
                            context,
                            1036,
                          ),
                          child: Row(
                            children: [
                              const Spacer(),
                              CMaker(
                                width: ResponsiveWidth(context, 300),
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
                                              ResponsiveFontSizeByHeight(
                                                  context, 40),
                                            ),
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2,
                                          )),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: ResponsiveHeight(
                                      context,
                                      20,
                                    ))),
                                    CMaker(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                LaunchURL(
                                                    url: ContactClass
                                                        .getContactLink(
                                                            "whatsApp")!);
                                              },
                                              child: SizedBox(
                                                  height: ResponsiveHeight(
                                                    context,
                                                    60,
                                                  ),
                                                  width: ResponsiveWidth(
                                                    context,
                                                    60,
                                                  ),
                                                  child: Image.asset(
                                                      "images/ColoredWhatsApp.png"))),
                                          InkWell(
                                              onTap: () {
                                                LaunchURL(
                                                    url: ContactClass
                                                        .getContactLink(
                                                            "linkedin")!);
                                              },
                                              child: SizedBox(
                                              height: ResponsiveHeight(
                                                  context, 60,
                                                  designScreenHeight: 1536),
                                              width: ResponsiveWidth(
                                                  context, 60,
                                                  designScreenWidth: 729),
                                              child: Image.asset(
                                                  "images/linkedin.png"))),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Spacer(
                                flex: 4,
                              ),
                              CMaker(
                                width: ResponsiveWidth(context, 300),
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
                                              ResponsiveFontSizeByHeight(
                                                  context, 40),
                                            ),
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 2,
                                          )),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: ResponsiveHeight(
                                      context,
                                      20,
                                    ))),
                                    CMaker(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                LaunchURL(
                                                    url: ContactClass
                                                        .getContactLink(
                                                            "facebook")!);
                                              },
                                              child: SizedBox(
                                                  height: ResponsiveHeight(
                                                    context,
                                                    60,
                                                  ),
                                                  width: ResponsiveWidth(
                                                    context,
                                                    60,
                                                  ),
                                                  child: Image.asset(
                                                      "images/ColoredFaceBook.png"))),
                                          InkWell(
                                              onTap: () {
                                                LaunchURL(
                                                    url: ContactClass
                                                        .getContactLink(
                                                            "instagram")!);
                                              },
                                              child: SizedBox(
                                                  height: ResponsiveHeight(
                                                      context, 60,
                                                      designScreenHeight: 1536),
                                                  width: ResponsiveWidth(
                                                      context, 60,
                                                      designScreenWidth: 729),
                                                  child: Image.asset(
                                                      "images/ColoredInstagram.png"))),
                                          InkWell(
                                              onTap: () {
                                                LaunchURL(
                                                    url: ContactClass
                                                        .getContactLink(
                                                            "tiktok")!);
                                              },
                                              child: SizedBox(
                                                  height: ResponsiveHeight(
                                                      context, 60,
                                                      designScreenHeight: 1536),
                                                  width: ResponsiveWidth(
                                                      context, 60,
                                                      designScreenWidth: 729),
                                                  child: Image.asset(
                                                      "images/ColoredTikTok.png"))),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
