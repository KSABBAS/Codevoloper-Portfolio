import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/ProjectsData.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileProjectIsOpened extends StatelessWidget {
  const MobileProjectIsOpened({super.key, required this.ProjectIndex});
  final int ProjectIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UsedColors.background,
      body: Container(
        padding: EdgeInsets.only(left: ResponsiveWidth(context,20,designScreenWidth: 412)),
        child: ListView(children: [
          Container(
            child: Column(
              children: [
                ResponsivePMaker(
                  vertical: 20,
                ),
                Container(
                  child: Row(
                    children: [
                      CMaker(
                          margin: EdgeInsets.only(
                              left: ResponsiveWidth(context, 20,
                                  designScreenWidth: 412)),
                          height: ResponsiveHeight(context, 120,
                              designScreenHeight: 915),
                          width: ResponsiveWidth(context, 120,
                              designScreenWidth: 412),
                          child: ViewImage(
                            ImageLink:
                                ProjectClass.getProjectsData()[ProjectIndex][0],
                          )),
                      ResponsivePMaker(
                        horizontal: 20,
                      ),
                      const Text(
                        "TIX",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 250, 250)),
                      ),
                      Spacer(),
                      CMaker(
                        circularRadius: 500,
                        padding: EdgeInsets.all(20),
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.arrow_forward_rounded),
                          iconSize: 40,
                        ),
                        
                      ),
                      ResponsivePMaker(horizontal: 10,)
                    ],
                  ),
                ),
                CMaker(
                  padding: EdgeInsets.only(right: ResponsiveWidth(context,20, designScreenWidth: 412)),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    " computers and machines that can reason, learn, and act in such a way that would normally require human intelligence or that involves data whose scale exceeds what humans can analyze",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                CMaker(
                  height:
                      ResponsiveHeight(context, 330, designScreenHeight: 915),
                  width: ResponsiveWidth(context, 370, designScreenWidth: 412),
                  color: UsedColors.Gray,
                  circularRadius: 20,
                  margin: EdgeInsets.symmetric(
                      vertical: ResponsiveHeight(context, 20,
                          designScreenHeight: 915),
                      horizontal:
                          ResponsiveWidth(context, 20, designScreenWidth: 412)),
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    ResponsivePMaker(horizontal: 20,),
                    CMaker(
                      circularRadius: 20,
                      height: ResponsiveHeight(context, 300,
                          designScreenHeight: 915),
                      width:
                          ResponsiveWidth(context, 330, designScreenWidth: 412),
                      color: Colors.green,
                    ),
                    ResponsivePMaker(horizontal: 20,),
                    Container(
                      height: ResponsiveHeight(context, 330,
                          designScreenHeight: 915),
                      width: ResponsiveWidth(
                          context,
                          (375 *
                                  ProjectClass.getProjectsData()[ProjectIndex]
                                          [4]
                                      .length) +
                              (ProjectClass.getProjectsData()[ProjectIndex][4]
                                      .length *
                                  40) +
                              0.0,
                          designScreenWidth: 412),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount:
                              ProjectClass.getProjectsData()[ProjectIndex][4]
                                  .length,
                          itemBuilder: (context, i) {
                            return CMaker(
                              circularRadius: 20,
                              alignment: Alignment.center,
                              child: ViewImage(
                                ImageLink:
                                    ProjectClass.getProjectsData()[ProjectIndex]
                                        [4][i],
                              ),
                              margin: EdgeInsets.all(20),
                              height: 300,
                              width: 375,
                            );
                          }),
                    ),
                  ]),
                ),
                ResponsivePMaker(vertical: 50,),
                Container(
                  width: ResponsiveWidth(context, PageWidth(context), designScreenWidth: 412),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      (ProjectClass.getProjectsData()[ProjectIndex][5]["app"] !=
                              null)
                          ? InkWell(
                              onTap: () {
                                LaunchURL(
                                    url: ProjectClass.getProjectsData()[
                                        ProjectIndex][5]["app"]);
                              },
                              child: CMaker(
                                color: UsedColors.Gray,
                                padding: EdgeInsets.symmetric(
                                    vertical: ResponsiveHeight(context, 10,
                                        designScreenHeight: 915),
                                    horizontal: ResponsiveWidth(context, 10,
                                        designScreenWidth: 412)),
                                circularRadius: 15,
                                child: Column(
                                  children: [
                                    CMaker(
                                        height: ResponsiveHeight(context, 30,
                                            designScreenHeight: 915),
                                        width: ResponsiveWidth(context, 30,
                                            designScreenWidth: 412),
                                        child:
                                            Image.asset("images/download.png")),
                                    ResponsivePMaker(
                                      vertical: 20,
                                    ),
                                    TMaker(
                                        textAlign: TextAlign.start,
                                        text: "App Link",
                                        fontSize: ResponsiveFontSizeByWidth(
                                            context, 15,
                                            designScreenWidth: 412),
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)
                                  ],
                                ),
                              ))
                          : CMaker(),
                      ResponsivePMaker(
                        horizontal: 20,
                      ),
                      (ProjectClass.getProjectsData()[ProjectIndex][5]
                                  ["website"] !=
                              null)
                          ? InkWell(
                              onTap: () {
                                LaunchURL(
                                    url: ProjectClass.getProjectsData()[
                                        ProjectIndex][5]["website"]);
                              },
                              child: CMaker(
                                  color: UsedColors.Gray,
                                  padding: EdgeInsets.symmetric(
                                      vertical: ResponsiveHeight(context, 10,
                                          designScreenHeight: 915),
                                      horizontal: ResponsiveWidth(context, 10,
                                          designScreenWidth: 412)),
                                  circularRadius: 15,
                                  child: Column(children: [
                                    Container(
                                        height: ResponsiveHeight(context, 30,
                                            designScreenHeight: 915),
                                        width: ResponsiveWidth(context, 30,
                                            designScreenWidth: 412),
                                        child:
                                            Image.asset("images/website.png")),
                                    ResponsivePMaker(
                                      vertical: 20,
                                    ),
                                    TMaker(
                                        textAlign: TextAlign.start,
                                        text: "Website Link",
                                        fontSize: ResponsiveFontSizeByWidth(
                                            context, 15,
                                            designScreenWidth: 412),
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)
                                  ])))
                          : CMaker(),
                      ResponsivePMaker(
                        horizontal: 20,
                      ),
                      (ProjectClass.getProjectsData()[ProjectIndex][5]
                                  ["github"] !=
                              null)
                          ? InkWell(
                              onTap: () {
                                LaunchURL(
                                    url: ProjectClass.getProjectsData()[
                                        ProjectIndex][5]["github"]);
                              },
                              child: CMaker(
                                  color: UsedColors.Gray,
                                  padding: EdgeInsets.symmetric(
                                      vertical: ResponsiveHeight(context, 10,
                                          designScreenHeight: 915),
                                      horizontal: ResponsiveWidth(context, 10,
                                          designScreenWidth: 412)),
                                  circularRadius: 15,
                                  child: Column(children: [
                                    Container(
                                        height: ResponsiveHeight(context, 30,
                                            designScreenHeight: 915),
                                        width: ResponsiveWidth(context, 30,
                                            designScreenWidth: 412),
                                        child:
                                            Image.asset("images/github.png")),
                                    ResponsivePMaker(
                                      vertical: 20,
                                    ),
                                    TMaker(
                                        textAlign: TextAlign.start,
                                        text: "Github Link",
                                        fontSize: ResponsiveFontSizeByWidth(
                                            context, 15,
                                            designScreenWidth: 412),
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white)
                                  ])))
                          : CMaker(),
                    ],
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
