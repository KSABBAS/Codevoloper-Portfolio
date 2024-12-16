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
                top: ResponsiveFontSizeByHeight(
                    context, (currentPageIndex == 0) ? -300 : -600,
                    designScreenHeight: 915),
                left: ResponsiveWidth(
                    context, (currentPageIndex == 0) ? -100 : 600,
                    designScreenWidth: 412),
                duration: Duration(milliseconds: 600),
                child: ACMaker(
                  duration: Duration(milliseconds: 600),
                  transform: Matrix4.identity()
                    ..rotateZ((currentPageIndex == 0)
                        ? (-1.9 * 3.14 * 180)
                        : (-5.2 *
                            3.14 *
                            150)), //(currentPageIndex==0)? 29:65 * (3.14 / 180),),
                  color: UsedColors.yellow,
                  height:
                      ResponsiveHeight(context, 2000, designScreenHeight: 915),
                  width: ResponsiveWidth(context, 550, designScreenWidth: 412),
                ),
              ),
              NavBarPositionTop:
                  ResponsiveHeight(context, 15, designScreenHeight: 915),
              barColor: Colors.transparent,
              vanishDuration: Duration(milliseconds: 300),
              pageBackgroundColor: Colors.transparent,
              SelectionContainerCircularRadius: 0,
              SelectionContainerWidth:
                  ResponsiveWidth(context, 90, designScreenWidth: 412),
              unSelectionContainerWidth:
                  ResponsiveWidth(context, 90, designScreenWidth: 412),
              selectedContainerColor: Colors.transparent,
              pages: [
                MobilePageOne(),
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
                        fontSize: ResponsiveFontSizeByWidth(context, 18,
                            designScreenWidth: 412),
                        fontWeight: (currentPageIndex == 0)
                            ? FontWeight.w800
                            : FontWeight.w600,
                        color: UsedColors.background),
                    (currentPageIndex == 0) ? Spacer() : CMaker(),
                    (currentPageIndex == 0)
                        ? CMaker(
                            width: ResponsiveWidth(context, 60,
                                designScreenWidth: 412),
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
                        fontSize: ResponsiveFontSizeByWidth(context, 18,
                            designScreenWidth: 412),
                        fontWeight: (currentPageIndex == 1)
                            ? FontWeight.w800
                            : FontWeight.w600,
                        color: UsedColors.background),
                    (currentPageIndex == 1) ? Spacer() : CMaker(),
                    (currentPageIndex == 1)
                        ? CMaker(
                            width: ResponsiveWidth(context, 60,
                                designScreenWidth: 412),
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
                        fontSize: ResponsiveFontSizeByWidth(context, 18,
                            designScreenWidth: 412),
                        fontWeight: (currentPageIndex == 2)
                            ? FontWeight.w800
                            : FontWeight.w600,
                        color: UsedColors.background),
                    (currentPageIndex == 2) ? Spacer() : CMaker(),
                    (currentPageIndex == 2)
                        ? CMaker(
                            width: ResponsiveWidth(context, 60,
                                designScreenWidth: 412),
                            border: Border(
                                bottom:
                                    BorderSide(color: UsedColors.background)),
                          )
                        : CMaker(),
                    Spacer(),
                  ],
                ),
              ],
              height: ResponsiveHeight(context, 60, designScreenHeight: 915),
              width: ResponsiveWidth(context, 320, designScreenWidth: 412)),
          (currentPageIndex == 0)
              ? Positioned(
                  top: ResponsiveHeight(context, 142, designScreenHeight: 915),
                  child: CMaker(
                    height:
                        ResponsiveHeight(context, 100, designScreenHeight: 915),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ResponsivePMaker(
                          horizontal: 77,
                        ),
                        TMaker(
                            text: "CODEVE",
                            fontSize: ResponsiveFontSizeByWidth(context, 40,
                                designScreenWidth: 412),
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
                              fontSize: ResponsiveFontSizeByWidth(context, 40,
                                  designScreenWidth: 412),
                              fontWeight: FontWeight.w700,
                              color: UsedColors.yellow),
                        ),
                        TMaker(
                            text: "OPER",
                            fontSize: ResponsiveFontSizeByWidth(context, 40,
                                designScreenWidth: 412),
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
