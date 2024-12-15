import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/ContactsData.dart';
import 'package:codeveloper_portfolio/Data/ProjectsData.dart';
import 'package:codeveloper_portfolio/Data/membersData.dart';
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
bool isHovered = false;
int? selectedToHover;

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
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
                      LaunchURL(url: ContactClass.getContactLink("whatsApp"));
                    },
                    child: SizedBox(
                      width: ResponsiveWidth(context, 250),
                      //alignment: Alignment.center,
                      child: Row(
                        children: [
                          const Spacer(),
                          SizedBox(
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
                              decorationColor:
                                  const Color.fromARGB(255, 0, 0, 0),
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
                    ))
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
                          Padding(
                            padding: EdgeInsets.only(
                                left: ResponsiveWidth(context, 60)),
                            child: Text("Projects",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                    fontSize:
                                        ResponsiveFontSizeByHeight(context, 70),
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
                      return CMaker(
                        circularRadius: 20,
                        height: ResponsiveHeight(context, 400),
                        width: ResponsiveWidth(context, 320),
                        child: InkWell(
                                onTap: () {
                                  Get.to(() => ProjectIsOpened(ProjectIndex: Index,));
                                },
                                onHover: (value) {
                                  if (value) {
                                    selectedToHover = Index;
                                    setState(() {});
                                  } else {
                                    selectedToHover = null;
                                    setState(() {});
                                  }
                                },
                                child: CMaker(
                                  margin: EdgeInsets.only(
                                    left: (Index == 0) ? 20 : 10,
                                    right: (Index == 19) ? 20 : 10,
                                  ),
                                  height: ResponsiveHeight(context, 300),
                                  width: ResponsiveWidth(context, 320),
                                  child: Stack(
                                    children: [
                                      CMaker(
                                        border: Border.all(color: Colors.white),
                                        circularRadius: 20,
                                        height: ResponsiveHeight(context, 400),
                                        width: ResponsiveWidth(context, 320),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: Image.network(
                                            ProjectClass.getProjectsData()[Index]
                                                [0],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      AnimatedOpacity(
                                        opacity:
                                            (Index == selectedToHover) ? 1 : 0,
                                        duration: const Duration(milliseconds: 400),
                                        child: CMaker(
                                          padding: const EdgeInsets.only(bottom: 50),
                                          height:
                                              ResponsiveHeight(context, 400),
                                          width: ResponsiveWidth(context, 320),
                                          circularRadius: 20,
                                          color: UsedColors.HoverColor,
                                          alignment: Alignment.bottomCenter,
                                          
                                          child: TMaker(
                                                text: ProjectClass.getProjectsData()[Index][1],
                                                fontSize:
                                                    ResponsiveFontSizeByWidth(
                                                        context, 30),
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                      );
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
