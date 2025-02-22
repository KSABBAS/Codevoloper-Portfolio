import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/ProjectsData.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:codeveloper_portfolio/View/Pages/Mobile/ProjectsPage/ProjectIsOpened.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileProjectsPage extends StatelessWidget {
  const MobileProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CMaker(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ResponsivePMaker(
              vertical: 200,
            ),
            CMaker(
              height: ResponsiveWidth(
                  context, ProjectClass.getProjectsData().length * 230,
                  designScreenWidth: 915),
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: ProjectClass.getProjectsData().length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => MobileProjectIsOpened(ProjectIndex:  index,));
                    },
                    child: Ink(
                      child: Container(
                          margin: EdgeInsets.only(
                            top: ResponsiveHeight(
                                context, (index == 0) ? 20 : 10,
                                designScreenHeight: 915),
                            bottom: ResponsiveHeight(
                                context, (index == 0) ? 20 : 10,
                                designScreenHeight: 915),
                            left: ResponsiveWidth(context, 10,
                                designScreenWidth: 412),
                            right: ResponsiveWidth(context, 10,
                                designScreenWidth: 412),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: const Color.fromARGB(100, 255, 255, 255),
                                width: 2),
                          ),
                          height: ResponsiveHeight(context, 200,
                              designScreenHeight: 915),
                          width: ResponsiveWidth(context, 392,
                              designScreenWidth: 412),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: Stack(
                              children: [
                                Positioned(
                                    bottom: -300,
                                    right: -550,
                                    child: CMaker(
                                      transform: Matrix4.identity()
                                        ..rotateZ((-5.2 * 3.14 * 150)),
                                      height: 400,
                                      width: 400,
                                      color: UsedColors.yellow,
                                    )),
                                CMaker(
                                  height: ResponsiveHeight(context, 200,
                                      designScreenHeight: 915),
                                  width: ResponsiveWidth(context, 392,
                                      designScreenWidth: 412),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: ResponsiveHeight(context, 10,
                                              designScreenHeight: 915),
                                          bottom: ResponsiveHeight(context, 10,
                                              designScreenHeight: 915),
                                          left: ResponsiveWidth(context, 10,
                                              designScreenWidth: 412),
                                        ),
                                        height: ResponsiveHeight(context, 200,
                                            designScreenHeight: 915),
                                        width: ResponsiveWidth(context, 150,
                                            designScreenWidth: 412),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          child: Image.network(
                                            ProjectClass.getProjectsData()[
                                                index][0],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      CMaker(
                                        height: ResponsiveHeight(context, 200,
                                            designScreenHeight: 915),
                                        width: ResponsiveWidth(context, 230,
                                            designScreenWidth: 412),
                                        child: Column(
                                          children: [
                                            CMaker(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                top: ResponsiveHeight(
                                                    context, 30,
                                                    designScreenHeight: 915),
                                                left: ResponsiveWidth(
                                                    context, 20,
                                                    designScreenWidth: 412),
                                              ),
                                              child: Text(
                                                ProjectClass.getProjectsData()[
                                                    index][1],
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color.fromARGB(
                                                        255, 255, 250, 250)),
                                              ),
                                            ),
                                            CMaker(
                                              alignment: Alignment.centerLeft,
                                              padding: EdgeInsets.only(
                                                top: ResponsiveHeight(
                                                    context, 10,
                                                    designScreenHeight: 915),
                                                left: ResponsiveWidth(
                                                    context, 20,
                                                    designScreenWidth: 412),
                                              ),
                                              child: Text(
                                                (ProjectClass.getProjectsData()[
                                                                index][2]
                                                            .length <
                                                        40)
                                                    ? ProjectClass
                                                            .getProjectsData()[
                                                        index][2]
                                                    : ProjectClass.getProjectsData()[
                                                                index][2]
                                                            .substring(0, 40) +
                                                        "...",
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromARGB(
                                                        255, 255, 250, 250)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
