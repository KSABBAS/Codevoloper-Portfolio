import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:codeveloper_portfolio/View/Home.dart';
import 'package:flutter/material.dart';

class MobilePageOne extends StatelessWidget {
  const MobilePageOne({super.key, required this.Refresh});
  final Function() Refresh;
  @override
  Widget build(BuildContext context) {
    return CMaker(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 150)),
          Container(
            margin: EdgeInsets.only(
              left: 160,
              top: 200,
            ),
            height: ResponsiveHeight(context, 50, designScreenHeight: 915),
            width: ResponsiveWidth(context, 300, designScreenWidth: 412),
            child: Text(
              "Mobile Applications",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 125,
              top: 10,
            ),
            height: ResponsiveHeight(context, 50, designScreenHeight: 915),
            width: ResponsiveWidth(context, 300, designScreenWidth: 412),
            child: Text(
              "Desktop Applications",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 65,
              top: 10,
            ),
            height: ResponsiveHeight(context, 50, designScreenHeight: 915),
            width: ResponsiveWidth(context, 300, designScreenWidth: 412),
            child: Text(
              "Websites Development",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            height: ResponsiveHeight(context, 50, designScreenHeight: 915),
            width: ResponsiveWidth(context, 300, designScreenWidth: 412),
            child: Text(
              "Database Maintenance",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          InkWell(
              onTap: () {
                currentPageIndex = 1;
                Refresh();
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: UsedColors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                height: ResponsiveHeight(context, 70, designScreenHeight: 915),
                width: ResponsiveWidth(context, 190, designScreenWidth: 412),
                child: Text(
                  "Navigate",
                  style: TextStyle(
                      color: UsedColors.background,
                      fontSize: ResponsiveFontSizeByWidth(context, 30,
                          designScreenWidth: 412),
                      fontWeight: FontWeight.bold),
                ),
              )),
          ResponsivePMaker(
            vertical: 20,
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Manage your project",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                ResponsivePMaker(
                  horizontal: 5,
                ),
                Text(
                  "efficiently",
                  style: TextStyle(
                      color: UsedColors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
