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
      body: Stack(
        children: [
          Positioned(
                // top:ResponsiveFontSizeByHeight(context,(currentPageIndex==0)?-700:-1050,designScreenHeight: 915),
                // left:ResponsiveWidth(context,(currentPageIndex==0)?-400:-500,designScreenWidth: 412),
                top: ResponsiveFontSizeByHeight(
                    context,  -700,
                    designScreenHeight: 915),
                left: ResponsiveWidth(
                    context,   700,
                    designScreenWidth: 412),
                child: CMaker(
                  transform: Matrix4.identity()
                    ..rotateZ(
                         (-1.9 * 3.14 * 180)),
                  color: UsedColors.yellow,
                  height:
                      ResponsiveHeight(context, 2000, designScreenHeight: 915),
                  width: ResponsiveWidth(context, 700, designScreenWidth: 412),
                ),
              ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: ResponsiveWidth(context,20,designScreenWidth: 412)),
            child: ListView(children: [
                    Container(
                      child: Row(
                        children: [
                          CMaker(
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
                           Padding(
                             padding:EdgeInsets.only(bottom: ResponsiveWidth(context,20, designScreenWidth: 915)),
                             child: Text(
                                ProjectClass.getProjectsData()[
                                        ProjectIndex][1],
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 250, 250)),
                              ),
                           ),
                          const Spacer(),
                          CMaker(
                            circularRadius: 500,
                            padding: const EdgeInsets.all(5),
                            child: IconButton(
                              onPressed: () {
                                Get.back();
                              },
                              icon: const Icon(Icons.arrow_forward_rounded),
                              iconSize: 40,
                            ),
                            
                          ),
                        ],
                      ),
                    ),
                    CMaker(
                      circularRadius: 20,
                      height:
                          ResponsiveHeight(context, 250, designScreenHeight: 915),
                      width: ResponsiveWidth(context, 370, designScreenWidth: 412),
                      padding: EdgeInsets.only(right: ResponsiveWidth(context,20, designScreenWidth: 412)),
                      alignment: Alignment.centerLeft,
                      child: SingleChildScrollView(
                        child: Text(
                          ProjectClass.getProjectsData()[
                                      ProjectIndex][2],
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ),
                    ResponsivePMaker(vertical: 20,),
                    CMaker(
                      height:
                          ResponsiveHeight(context, 330, designScreenHeight: 915),
                      width: ResponsiveWidth(context, 370, designScreenWidth: 412),
                      circularRadius: 20,
                      child: ListView(scrollDirection: Axis.horizontal, children: [
                        ResponsivePMaker(horizontal: 10,),
                        CMaker(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(vertical: ResponsiveHeight(context,20, designScreenHeight: 915)),
                          circularRadius: 20,
                          height: ResponsiveHeight(context, 300,
                              designScreenHeight: 915),
                          width:
                              ResponsiveWidth(context, 330, designScreenWidth: 412),
                          child: MyVideoPlayer(url: ProjectClass.getProjectsData()[ProjectIndex][3], allowFullScreen: true),
                        ),
                        ResponsivePMaker(horizontal: 10,),
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
                                      20) +
                                  0.0,
                              designScreenWidth: 412),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  ProjectClass.getProjectsData()[ProjectIndex][4]
                                      .length,
                              itemBuilder: (context, i) {
                                return CMaker(
                                  circularRadius: 20,
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.symmetric(vertical: ResponsiveHeight(context,20, designScreenHeight: 915),horizontal: ResponsiveWidth(context, 10, designScreenWidth: 412)),
                                  height: 300,
                                  width: 375,
                                  child: ViewImage(
                                    ImageLink:
                                        ProjectClass.getProjectsData()[ProjectIndex]
                                            [4][i],
                                  ),
                                );
                              }),
                        ),
                      ]),
                    ),
                    ResponsivePMaker(vertical: 40,),
                    SizedBox(
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
                                      padding: EdgeInsets.symmetric(
                                          vertical: ResponsiveHeight(context, 10,
                                              designScreenHeight: 915),
                                          horizontal: ResponsiveWidth(context, 10,
                                              designScreenWidth: 412)),
                                      circularRadius: 15,
                                      child: Column(children: [
                                        SizedBox(
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
                                      padding: EdgeInsets.symmetric(
                                          vertical: ResponsiveHeight(context, 10,
                                              designScreenHeight: 915),
                                          horizontal: ResponsiveWidth(context, 10,
                                              designScreenWidth: 412)),
                                      circularRadius: 15,
                                      child: Column(children: [
                                        SizedBox(
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
            ]),
          ),
        ],
      ),
    );
  }
}
