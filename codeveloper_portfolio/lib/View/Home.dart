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
          AnimatedPositioned(
            top:ResponsiveFontSizeByHeight(context,-700,designScreenHeight: 915),
            left:ResponsiveWidth(context,-400,designScreenWidth: 412),
            duration: Duration(milliseconds: 300),
            child: Transform.rotate(
              angle: 29 * 3.14 / 180,
              child: CMaker(
                color: UsedColors.yellow,
                height: ResponsiveHeight(context, 2000, designScreenHeight: 915),
                width: ResponsiveWidth(context, 550, designScreenWidth: 412),
              ),
            ),
          ),
          PopAndVanishNavBar(
            NavBarPositionTop: ResponsiveHeight(context, 15,designScreenHeight: 915),
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
                        fontWeight: FontWeight.w600,
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
                        fontWeight: FontWeight.w600,
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
                        fontWeight: FontWeight.w600,
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
