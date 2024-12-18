import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/ContactsData.dart';
import 'package:codeveloper_portfolio/Data/ProjectsData.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectIsOpened extends StatefulWidget {
  const ProjectIsOpened({super.key, required this.ProjectIndex});
  final int ProjectIndex;
  @override
  State<ProjectIsOpened> createState() => _ProjectIsOpenedState();
}

class _ProjectIsOpenedState extends State<ProjectIsOpened> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CMaker(height: double.infinity,width: double.infinity,child: Image.asset("images/background.jpg",fit: BoxFit.cover,),),
          CMaker(
            height: PageHeight(context),
            width: PageWidth(context),
            padding: EdgeInsets.only(
                top: ResponsiveHeight(context, 40),
                left: ResponsiveWidth(context, 40),
                right: ResponsiveWidth(context, 40)),
            child: ListView(
              children: [
                Container(
                  width: PageWidth(context),
                  height: ResponsiveHeight(
                    context,
                    120,
                  ),
                  child: Row(children: [
                    Container(
                        width: ResponsiveWidth(
                          context,
                          120,
                        ),
                        height: ResponsiveHeight(
                          context,
                          120,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                                ProjectClass.getProjectsData()[widget.ProjectIndex]
                                    [0]))),
                    ResponsivePMaker(
                      horizontal: 20,
                    ),
                    Text(
                      '${ProjectClass.getProjectsData()[widget.ProjectIndex][1]}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ResponsiveFontSizeByHeight(
                            context,
                            40,
                          ),
                          fontWeight: FontWeight.w200),
                    ),
                    Spacer(),
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: CMaker(
                            color: UsedColors.Gray,
                            alignment: Alignment.center,
                            circularRadius: 20,
                            height: ResponsiveHeight(context, 40),
                            width: ResponsiveWidth(context, 100),
                            child: Icon(
                              Icons.arrow_forward,
                              size: ResponsiveFontSizeByHeight(context, 30),
                            )))
                  ]),
                ),
                ResponsivePMaker(
                  vertical: 20,
                ),
                CMaker(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: CMaker(
                      width: ResponsiveWidth(
                        context,
                        1200,
                      ),
                      alignment: Alignment.topLeft,
                      child: TMaker(
                          textAlign: TextAlign.start,
                          text: ProjectClass.getProjectsData()[widget.ProjectIndex]
                              [2],
                          fontSize: ResponsiveFontSizeByHeight(context, 15),
                          fontWeight: FontWeight.w500,
                          color: Colors.white)),
                ),
                ResponsivePMaker(
                  vertical: 20,
                ),
                CMaker(
                  height: ResponsiveHeight(context, 530),
                  width: ResponsiveWidth(context, PageWidth(context)),
                  child: CMaker(
                    color: UsedColors.Gray,
                    alignment: Alignment.center,
                    height: ResponsiveHeight(context, 500),
                    width: ResponsiveWidth(context, 1536),
                    padding: EdgeInsets.only(
                        top: ResponsiveFontSizeByHeight(
                          context,
                          15,
                        ),
                        bottom: ResponsiveFontSizeByWidth(
                          context,
                          15,
                        )),
                    circularRadius: 15,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ResponsivePMaker(
                          horizontal: 15,
                        ),
                        CMaker(
                          circularRadius: 15,
                          height: ResponsiveHeight(context, 500),
                          width: ResponsiveWidth(context, 400),
                          color: UsedColors.background,
                          alignment: Alignment.center,
                          child: MyVideoPlayer(url: ProjectClass.getProjectsData()[widget.ProjectIndex][3], allowFullScreen: true),
                        ),
                        ResponsivePMaker(
                          horizontal: 15,
                        ),
                        CMaker(
                          height: ResponsiveHeight(context, 500),
                          width: ResponsiveWidth(context, (415.0*ProjectClass.getProjectsData()[widget.ProjectIndex][4].length)),
                          child: ListView.builder(
                            shrinkWrap: false,
                            physics: NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                ProjectClass.getProjectsData()[widget.ProjectIndex]
                                        [4]
                                    .length,
                            itemBuilder: (context, index) {
                              return CMaker(
                                margin: EdgeInsets.only(
                                    right: ResponsiveWidth(context, 15)),
                                circularRadius: 15,
                                color: UsedColors.background,
                                height: ResponsiveHeight(context, 500),
                                width: ResponsiveWidth(context, 400),
                                child: Image.network(ProjectClass.getProjectsData()[
                                    widget.ProjectIndex][4][index]),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                ResponsivePMaker(
                  vertical: 20,
                ),
                CMaker(
                  width: PageWidth(context),
                  height: ResponsiveHeight(context, 145),
                  alignment: Alignment.center,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        (ProjectClass.getProjectsData()[widget.ProjectIndex][5]
                                    ["app"] !=
                                null)
                            ? InkWell(
                                onTap: () {
                                  LaunchURL(
                                      url: ProjectClass.getProjectsData()[
                                          widget.ProjectIndex][5]["app"]);
                                },
                                child: CMaker( color: UsedColors.Gray,
                                height: ResponsiveHeight(context, 145),
                                  padding: EdgeInsets.symmetric(vertical: ResponsiveHeight(context,20),horizontal: ResponsiveWidth(context,20)),
                                  circularRadius: 15,
                                  child: Column(
                                    children: [
                                      CMaker(
                                          height: ResponsiveHeight(
                                            context,
                                            60,
                                          ),
                                          width: ResponsiveWidth(
                                            context,
                                            60,
                                          ),
                                          child:
                                              Image.asset("images/download.png")),
                                      ResponsivePMaker(
                                        vertical: 20,
                                      ),
                                      TMaker(
                                          textAlign: TextAlign.start,
                                          text: "App Link",
                                          fontSize: ResponsiveFontSizeByHeight(
                                              context, 15),
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)
                                    ],
                                  ),
                                ))
                            : CMaker(),
                            ResponsivePMaker(
                                        horizontal: 20,
                                      ),
                        (ProjectClass.getProjectsData()[widget.ProjectIndex][5]
                                    ["website"] !=
                                null)
                            ? InkWell(
                                onTap: () {
                                  LaunchURL(
                                      url: ProjectClass.getProjectsData()[
                                          widget.ProjectIndex][5]["website"]);
                                },
                                child: CMaker(
                                  color: UsedColors.Gray,
                                  padding: EdgeInsets.symmetric(vertical: ResponsiveHeight(context,20),horizontal: ResponsiveWidth(context,20)),
                                  circularRadius: 15,
                                  height: ResponsiveHeight(context, 145),
                                    child: Column(children: [
                                  Container(
                                      height: ResponsiveHeight(
                                        context,
                                        60,
                                      ),
                                      width: ResponsiveWidth(
                                        context,
                                        60,
                                      ),
                                      child: Image.asset("images/website.png")),
                                  ResponsivePMaker(
                                    vertical: 20,
                                  ),
                                  TMaker(
                                      textAlign: TextAlign.start,
                                      text: "Website Link",
                                      fontSize:
                                          ResponsiveFontSizeByHeight(context, 15),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)
                                ])))
                            : CMaker(),
                            ResponsivePMaker(
                                        horizontal: 20,
                                      ),
                        (ProjectClass.getProjectsData()[widget.ProjectIndex][5]
                                    ["github"] !=
                                null)
                            ? InkWell(
                                onTap: () {
                                  LaunchURL(
                                      url: ProjectClass.getProjectsData()[
                                          widget.ProjectIndex][5]["github"]);
                                },
                                child: CMaker(
                                  height: ResponsiveHeight(context, 145),
                                  color: UsedColors.Gray,
                                  padding: EdgeInsets.symmetric(vertical: ResponsiveHeight(context,20),horizontal: ResponsiveWidth(context,20)),
                                  circularRadius: 15,
                                    child: Column(children: [
                                  Container(
                                      height: ResponsiveHeight(
                                        context,
                                        60,
                                      ),
                                      width: ResponsiveWidth(
                                        context,
                                        60,
                                      ),
                                      child: Image.asset("images/github.png")),
                                      ResponsivePMaker(
                                    vertical: 20,
                                  ),
                                  TMaker(
                                      textAlign: TextAlign.start,
                                      text: "Github Link",
                                      fontSize:
                                          ResponsiveFontSizeByHeight(context, 15),
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)
                                ])))
                            : CMaker(),
                      ],
                    ),
                  ),
                ResponsivePMaker(vertical: 30,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
