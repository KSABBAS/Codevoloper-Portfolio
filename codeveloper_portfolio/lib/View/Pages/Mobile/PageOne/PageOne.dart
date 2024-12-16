import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';

class MobilePageOne extends StatelessWidget {
  const MobilePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return CMaker(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          ResponsivePMaker(vertical: 150,),
          Container(
            margin: EdgeInsets.only(left: ResponsiveWidth(context,150 , designScreenWidth: 412), top:ResponsiveHeight(context, 200, designScreenHeight: 915)),
            height:ResponsiveHeight(context, 50, designScreenHeight: 915),
            width:ResponsiveWidth(context,300 , designScreenWidth: 412),
            child: Text(
              "Mobile Applications",
              style: TextStyle(
                  color: Colors.white,
                  fontSize:ResponsiveFontSizeByWidth(context,20,designScreenWidth: 412),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:ResponsiveWidth(context,120 , designScreenWidth: 412),top: ResponsiveHeight(context, 10, designScreenHeight: 915)),
            height:ResponsiveHeight(context, 50, designScreenHeight: 915),
            width:ResponsiveWidth(context,300 , designScreenWidth: 412),
            child: Text(
              "Desktop Applications",
              style: TextStyle(
                  color: Colors.white,
                  fontSize:ResponsiveFontSizeByWidth(context,20,designScreenWidth: 412),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:ResponsiveWidth(context,65 , designScreenWidth: 412), top:ResponsiveHeight(context, 10, designScreenHeight: 915)),
            height:ResponsiveHeight(context, 50, designScreenHeight: 915),
            width:ResponsiveWidth(context,300 , designScreenWidth: 412),
            child: Text(
              "Websites Development",
              style: TextStyle(
                  color: Colors.white,
                  fontSize:ResponsiveFontSizeByWidth(context,20,designScreenWidth: 412),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left:ResponsiveWidth(context,5 , designScreenWidth: 412), top:ResponsiveHeight(context, 10, designScreenHeight: 915) ),
            height:ResponsiveHeight(context, 50, designScreenHeight: 915) ,
            width:ResponsiveWidth(context,300 , designScreenWidth: 412) ,
            child: Text(
              "Database Maintenance",
              style: TextStyle(
                  color: Colors.white,
                  fontSize:ResponsiveFontSizeByWidth(context,20,designScreenWidth: 412),
                  fontWeight: FontWeight.bold),
            ),
          ),
          ResponsivePMaker(vertical: 100,),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: UsedColors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(15))),
            height:ResponsiveHeight(context, 70, designScreenHeight: 915),
            width:ResponsiveWidth(context,190 , designScreenWidth: 412) ,
            child: Text(
              "Navigate",
              style: TextStyle(
                  color: UsedColors.background,
                  fontSize: ResponsiveFontSizeByWidth(context,30,designScreenWidth: 412),
                  fontWeight: FontWeight.bold),
            ),
          ),
          ResponsivePMaker(vertical: 20,),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Manage your project",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize:ResponsiveFontSizeByWidth(context,20,designScreenWidth: 412),
                      fontWeight: FontWeight.bold),
                ),
                ResponsivePMaker(horizontal: 5,),
                Text(
                  "efficiently",
                  style: TextStyle(
                      color: UsedColors.yellow,
                      fontSize: ResponsiveFontSizeByWidth(context,20,designScreenWidth: 412),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
