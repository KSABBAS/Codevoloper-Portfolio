import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:codeveloper_portfolio/View/Pages/windows/MembersPage/MembersPage.dart';
import 'package:codeveloper_portfolio/View/Pages/windows/PageOne/PageOne.dart';
import 'package:codeveloper_portfolio/View/Pages/windows/ProjectsPage/ProjectsPage.dart';
import 'package:codeveloper_portfolio/View/Pages/Mobile/MembersPage/MembersPage.dart';
import 'package:codeveloper_portfolio/View/Pages/Mobile/PageOne/PageOne.dart';
import 'package:codeveloper_portfolio/View/Pages/Mobile/ProjectsPage/ProjectsPage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int currentPageIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      return Stack(
        children: [
          CMaker(
            height: double.infinity,
            width: double.infinity,
            color: UsedColors.background,
          ),
          PopAndVanishLAyerBetweenNavBar(
              LayerBetween: AnimatedPositioned(
                // top:ResponsiveFontSizeByHeight(context,(currentPageIndex==0)?-700:-1050,designScreenHeight: 915),
                // left:ResponsiveWidth(context,(currentPageIndex==0)?-400:-500,designScreenWidth: 412),
                top:(currentPageIndex == 0) ? -300 : -600,
                left: (currentPageIndex == 0) ? -100 : 600,
                duration:const Duration(milliseconds: 600),
                child: ACMaker(
                  duration:const Duration(milliseconds: 600),
                  transform: Matrix4.identity()
                    ..rotateZ((currentPageIndex == 0)
                        ? (-1.9 * 3.14 * 180)
                        : (-5.2 *
                            3.14 *
                            150)), //(currentPageIndex==0)? 29:65 * (3.14 / 180),),
                  color: UsedColors.yellow,
                  height:2000,
                  width:550,
                ),
              ),
              NavBarPositionTop:
                  ResponsiveHeight(context, 15, designScreenHeight: 915),
              barColor: Colors.transparent,
              vanishDuration: Duration(milliseconds: 300),
              pageBackgroundColor: Colors.transparent,
              SelectionContainerCircularRadius: 0,
              SelectionContainerWidth:90,
              unSelectionContainerWidth:90,
              selectedContainerColor: Colors.transparent,
              pages: [
                MobilePageOne(Refresh: () {
                  setState(() {
                    
                  });
                },),
                MobileMembersPage(),
                MobileProjectsPage()
              ],
              onPageChange: (index) {
                currentPageIndex = index;
                setState(() {});
              },
              iconsList: [
                Column(
                  children: [
                    Spacer(),
                    TMaker(
                        text: "Home",
                        fontSize:18,
                        fontWeight: (currentPageIndex == 0)
                            ? FontWeight.w800
                            : FontWeight.w600,
                        color: UsedColors.background),
                    (currentPageIndex == 0) ? Spacer() : CMaker(),
                    (currentPageIndex == 0)
                        ? CMaker(
                            width:60,
                            border: Border(
                                bottom:
                                    BorderSide(color: UsedColors.background)),
                          )
                        : CMaker(),
                    Spacer(),
                  ],
                ),
                Column(
                  children: [
                    Spacer(),
                    TMaker(
                        text: "Members",
                        fontSize:18,
                        fontWeight: (currentPageIndex == 1)
                            ? FontWeight.w800
                            : FontWeight.w600,
                        color: UsedColors.background),
                    (currentPageIndex == 1) ? Spacer() : CMaker(),
                    (currentPageIndex == 1)
                        ? CMaker(
                            width:60,
                            border: Border(
                                bottom:
                                    BorderSide(color: UsedColors.background)),
                          )
                        : CMaker(),
                    Spacer(),
                  ],
                ),
                Column(
                  children: [
                    Spacer(),
                    TMaker(
                        text: "Projects",
                        fontSize: 18,
                        fontWeight: (currentPageIndex == 2)
                            ? FontWeight.w800
                            : FontWeight.w600,
                        color: UsedColors.background),
                    (currentPageIndex == 2) ? Spacer() : CMaker(),
                    (currentPageIndex == 2)
                        ? CMaker(
                            width: 60,
                            border: Border(
                                bottom:
                                    BorderSide(color: UsedColors.background)),
                          )
                        : CMaker(),
                    Spacer(),
                  ],
                ),
              ],
              height:60,
              width:320),
          (currentPageIndex == 0)
              ? Positioned(
                  left: 87,
                  top: 130,
                  child: CMaker(
                    height: 100,
                    width: 500,
                    child: Row(
                      children: [
                        TMaker(
                            text: "CODEVE",
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: UsedColors.background),
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return LinearGradient(
                              colors: [
                                UsedColors.background,
                                UsedColors.background,
                                UsedColors.background,
                                UsedColors.background,
                                UsedColors.background,
                                UsedColors.background,
                                UsedColors.background,
                                UsedColors.yellow,
                                UsedColors.yellow,
                                UsedColors.yellow,
                                UsedColors.yellow,
                                UsedColors.yellow,
                                UsedColors.yellow,
                                UsedColors.yellow,
                                UsedColors.yellow,
                                UsedColors.yellow,
                                UsedColors.yellow,
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.bottomRight,
                            ).createShader(bounds);
                          },
                          blendMode: BlendMode.srcIn,
                          child: TMaker(
                              text: "L",
                              fontSize: 40,
                              fontWeight: FontWeight.w700,
                              color: UsedColors.yellow),
                        ),
                        TMaker(
                            text: "OPER",
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: UsedColors.yellow),
                      ],
                    ),
                  ),
                )
              : CMaker(
                  height: 0,
                  width: 0,
                ),
        ],
      );
    } else {
      return Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: double.infinity,
            width: double.infinity,
            alignment: (currentPageIndex == 0)
                ? Alignment.centerRight
                : Alignment.centerLeft,
            color: UsedColors.background,
            child: CMaker(
              color: UsedColors.yellow,
              height: double.infinity,
              width: ResponsiveWidth(context, 438),
            ),
          ),
          PopAndVanishNavBar(
              NavBarPositionTop: ResponsiveHeight(context, 20),
              NavBarPositionRight: ResponsiveWidth(context, 84),
              BarCircularRadius: 30,
              vanishDuration: Duration(milliseconds: 200),
              SelectionContainerHeight: ResponsiveHeight(context, 30),
              SelectionContainerWidth: ResponsiveWidth(context, 30),
              selectedContainerColor: Colors.transparent,
              SelectedContainerBorder: Border.all(color: Colors.white),
              SelectionContainerCircularRadius: 50,
              pages: [PageOne(), MembersPage(), ProjectsPage()],
              onPageChange: (index) {
                currentPageIndex = index;
                setState(() {});
              },
              barColor: UsedColors.Gray,
              iconsList: [
                Icon(
                  Icons.home,
                  size: ResponsiveHeight(context, 25),
                ),
                Icon(
                  Icons.people,
                  size: ResponsiveHeight(context, 25),
                ),
                Icon(
                  Icons.person,
                  size: ResponsiveHeight(context, 25),
                ),
              ],
              height: ResponsiveHeight(context, 40),
              width: ResponsiveWidth(context, 270)),
        ],
      );
    }
  }
}
