import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/membersData.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';

class MobileMembersPage extends StatefulWidget {
  const MobileMembersPage({super.key});

  @override
  State<MobileMembersPage> createState() => _MobileMembersPageState();
}

class _MobileMembersPageState extends State<MobileMembersPage> {
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
                  context, MemberClass.getMemberList().length * 200,
                  designScreenWidth: 915),
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: false,
                physics: NeverScrollableScrollPhysics(),
                itemCount: MemberClass.getMemberList().length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 100, left: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color.fromARGB(100, 255, 255, 255),
                          width: 2),
                      gradient: LinearGradient(
                          begin: Alignment(-0.5, -1.5),
                          end: Alignment(0, 2),
                          colors: [
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            UsedColors.background,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                            Colors.amberAccent,
                          ]),
                    ),
                    height: ResponsiveHeight(context,200, designScreenHeight: 915),
                    width:ResponsiveWidth(context,380, designScreenWidth: 412),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.red,
                          margin: EdgeInsets.only(left: 12, right: 20),
                        ),
                        Text(
                          "TIX :For marketing",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 255, 250, 250)),
                        )
                      ],
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
