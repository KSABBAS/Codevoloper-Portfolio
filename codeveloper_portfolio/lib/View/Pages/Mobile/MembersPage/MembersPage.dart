import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';
class MobileMembersPage extends StatelessWidget {
  const MobileMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: TMaker(text: "Members", fontSize: ResponsiveFontSizeByWidth(context,18,designScreenWidth: 412), fontWeight:FontWeight.w600, color: UsedColors.yellow),);
  }
}