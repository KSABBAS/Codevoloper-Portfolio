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
              height: ResponsiveWidth(context,MemberClass.getMemberList().length*200 , designScreenWidth: 915),
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: false,
                physics: NeverScrollableScrollPhysics(),
                itemCount: MemberClass.getMemberList().length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: 350,
                    color: Colors.red,
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
