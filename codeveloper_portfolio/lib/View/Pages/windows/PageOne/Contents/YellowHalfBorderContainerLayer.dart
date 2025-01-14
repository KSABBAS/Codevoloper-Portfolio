import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';
class YellowHalfBorderContainerLayer extends StatelessWidget {
  const YellowHalfBorderContainerLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CMaker(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top:ResponsiveHeight(context,50),left:ResponsiveWidth(context,50)),
            height: double.infinity,
            width: double.infinity,
            child: CMaker(
              height:ResponsiveHeight(context, 450),
              width:ResponsiveWidth(context, 450),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    UsedColors.yellow,
                    UsedColors.yellow,
                    UsedColors.background,
                    UsedColors.background,
                    UsedColors.background,
                    UsedColors.background,
                  ]),
              alignment: Alignment.center,
              border: Border(
                  bottom: BorderSide(
                      color: UsedColors.background, width: 7),
                  right: BorderSide(
                      color: UsedColors.background, width: 7)),
              child: CMaker(
                height:ResponsiveHeight(context, 410),
                width:ResponsiveWidth(context, 410),
                color: UsedColors.background,
              ),
            ),
          );
  }
}