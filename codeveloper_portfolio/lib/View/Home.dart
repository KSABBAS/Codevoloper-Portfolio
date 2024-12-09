import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:codeveloper_portfolio/View/Pages/ContactUs/ContactUs.dart';
import 'package:codeveloper_portfolio/View/Pages/MembersPage/MembersPage.dart';
import 'package:codeveloper_portfolio/View/Pages/PageOne/PageOne.dart';
import 'package:codeveloper_portfolio/View/Pages/ProjectsPage/ProjectsPage.dart';
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
    return Stack(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: double.infinity,
          width: double.infinity,
          alignment: (currentPageIndex==0)?Alignment.centerRight:Alignment.centerLeft,
          color: UsedColors.background,
          child: CMaker(
            color: UsedColors.yellow,
            height: double.infinity,
            width:ResponsiveWidth(context,438),
          ),
        ),
        NavBar(
              NavBarPositionTop:ResponsiveHeight(context,20),
              NavBarPositionRight:ResponsiveWidth(context,84),
              SelectionContainerAnimationDuration: Duration(milliseconds: 200),
              ScrollDuration: Duration(seconds: 20),
              BarCircularRadius: 30,
              SelectionContainerHeight:ResponsiveHeight(context,30),
              SelectionContainerWidth:ResponsiveWidth(context,30),
              selectedContainerColor: Colors.transparent,
              SelectedContainerBorder: Border.all(color: Colors.white),
              SelectionContainerCircularRadius: 50,
              pages: [PageOne(), MembersPage(), ProjectsPage(), ContactUsPage()],
              onPageChange: (index) {
                currentPageIndex = index;
                setState(() {});
              },
              barColor: UsedColors.Gray,
              iconsList: [
                Icon(Icons.home,size: ResponsiveHeight(context, 25),),
                Icon(Icons.people,size: ResponsiveHeight(context, 25),),
                Icon(Icons.person,size: ResponsiveHeight(context, 25),),
                Icon(Icons.person,size: ResponsiveHeight(context, 25),),
              ],
              height:ResponsiveHeight(context, 40),
              width:ResponsiveWidth(context,  270)),
      ],
    );
  }
}
