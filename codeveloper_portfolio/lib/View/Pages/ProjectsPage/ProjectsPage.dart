import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/ContactsData.dart';
import 'package:codeveloper_portfolio/Data/ProjectsData.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:codeveloper_portfolio/View/Pages/ProjectsPage/ProjectIsOpened.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
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
                InkWell(
                                              onTap: () {
                                                LaunchURL(
                                                    url: ContactClass
                                                        .getContactLink(
                                                            "whatsApp"));
                                              },
                                              child: Container(
                                                width: ResponsiveWidth(context,250),
                //alignment: Alignment.center,
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                        //margin: EdgeInsets.symmetric(horizontal: 200),
                        height: ResponsiveHeight(context, 50,
                            ),
                        width: ResponsiveWidth(context, 50,
                            ),
                        child: Image.asset("images/Cs.png")),
                        Padding(padding:EdgeInsets.only(left: ResponsiveWidth(context, 20))),
                    Text(
                      "Contact us",
                      style: TextStyle(
                        decorationColor: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: ResponsiveHeight(context, 20,
                            ),
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ))
              ],
            ),
          ),
          CMaker(
            height: PageHeight(context),
            width: ResponsiveWidth(context, 1098),
            child: Column(
              children: [
                Container(
                  height:
                      ResponsiveHeight(context, 200,),
                  width:
                      ResponsiveWidth(context, 1036,),
                  //color: const Color.fromARGB(255, 91, 73, 72),
                  child: Row(
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 50),
                        height:ResponsiveHeight(context,150),
                        width:ResponsiveWidth(context, 5),
                        color: Colors.white,
                      ),
                      //   Padding(padding: EdgeInsets.only(left: 50, top: 80)),
                      Container(
                          //color: Colors.blue,
                          child: Column(
                        children: [
                          Text(
                            "See Our",
                            style: TextStyle(fontSize:ResponsiveFontSizeByHeight(context,50), color: Colors.black),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:ResponsiveWidth(context, 150)),
                            child: Text("Projects",
                                style: TextStyle(
                                    fontSize:ResponsiveFontSizeByHeight(context,50),
                                    color: const Color.fromARGB(
                                        255, 249, 227, 27))),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                CMaker(
                  margin: EdgeInsets.symmetric(
                      vertical: ResponsiveHeight(context, 20),
                      horizontal: ResponsiveWidth(context, 20)),
                  color: UsedColors.Gray,
                  circularRadius: 20,
                  height: ResponsiveHeight(
                    context,
                    545,
                  ),
                  width: ResponsiveWidth(
                    context,
                    1035,
                  ),
                  child: WGridBuilder(
                    childColor: Colors.transparent,
                    builder: (Index) {
                      return Container(
                        height: ResponsiveHeight(context, 400),
                        width: ResponsiveWidth(context, 320),
                        child: Column(
                          children: [
                            CMaker(
                                height:ResponsiveHeight(context,200),
                                width:ResponsiveWidth(context, 200),
                                child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child:Image.network(
                                    ProjectClass.getProjectsData()[Index][0],
                                    fit: BoxFit.cover,
                                  ),
                              ),
                            ),
                            Spacer(),
                            TMaker(text: "${ProjectClass.getProjectsData()[Index][1]}", fontSize: ResponsiveWidth(context,40), fontWeight: FontWeight.w700, color: Colors.white),
                            Spacer(),
                          ],
                        ),
                      );
                    },
                    onSelected: (SelectedIndex) {
                      Get.to(() => ProjectIsOpened());
                    },
                    itemCount: ProjectClass.getProjectsData().length,
                    rowSpaces: ResponsiveHeight(context, 30),
                    columnSpaces: ResponsiveWidth(context, 18),
                    crossAxisCount: 3,
                    childHeight: ResponsiveHeight(context, 400),
                    childWidth: ResponsiveWidth(context, 320),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
