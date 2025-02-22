import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/ContactsData.dart';
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
                  context, (MemberClass.getMemberList().length * 220) + 20,
                  designScreenWidth: 915),
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: MemberClass.getMemberList().length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(
                        top: ResponsiveHeight(context, (index == 0) ? 20 : 10,
                            designScreenHeight: 915),
                        bottom: ResponsiveHeight(
                            context, (index == 0) ? 20 : 10,
                            designScreenHeight: 915),
                        left: ResponsiveWidth(context, 10,
                            designScreenWidth: 412),
                        right: ResponsiveWidth(context, 10,
                            designScreenWidth: 412),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: const Color.fromARGB(100, 255, 255, 255),
                            width: 2),
                      ),
                      height: ResponsiveHeight(context, 200,
                          designScreenHeight: 915),
                      width:
                          ResponsiveWidth(context, 392, designScreenWidth: 412),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Stack(
                          children: [
                            Positioned(
                                bottom: -300,
                                right: -550,
                                child: CMaker(
                                  transform: Matrix4.identity()
                                    ..rotateZ((-5.2 * 3.14 * 150)),
                                  height: 400,
                                  width: 400,
                                  color: UsedColors.yellow,
                                )),
                            CMaker(
                              height: ResponsiveHeight(context, 200,
                                  designScreenHeight: 915),
                              width: ResponsiveWidth(context, 392,
                                  designScreenWidth: 412),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                      top: ResponsiveHeight(context, 10,
                                          designScreenHeight: 915),
                                      bottom: ResponsiveHeight(context, 10,
                                          designScreenHeight: 915),
                                      left: ResponsiveWidth(context, 10,
                                          designScreenWidth: 412),
                                    ),
                                    height: ResponsiveHeight(context, 200,
                                        designScreenHeight: 915),
                                    width: ResponsiveWidth(context, 150,
                                        designScreenWidth: 412),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        MemberClass.getMemberList()[index][0],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  CMaker(
                                    height: ResponsiveHeight(context, 200,
                                        designScreenHeight: 915),
                                    width: ResponsiveWidth(context, 230,
                                        designScreenWidth: 412),
                                    child: Column(
                                      children: [
                                        CMaker(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(
                                            top: ResponsiveHeight(context, 30,
                                                designScreenHeight: 915),
                                            left: ResponsiveWidth(context, 20,
                                                designScreenWidth: 412),
                                          ),
                                          child: Text(
                                            MemberClass.getMemberList()[index]
                                                [1],
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 255, 250, 250)),
                                          ),
                                        ),
                                        CMaker(
                                          alignment: Alignment.centerLeft,
                                          padding: EdgeInsets.only(
                                            top: ResponsiveHeight(context, 10,
                                                designScreenHeight: 915),
                                            left: ResponsiveWidth(context, 20,
                                                designScreenWidth: 412),
                                          ),
                                          child: Text(
                                            MemberClass.getMemberList()[index]
                                                [2],
                                            textAlign: TextAlign.start,
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 255, 250, 250)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: ResponsiveHeight(context, 20, designScreenHeight: 915)),
              height: ResponsiveHeight(context, 150, designScreenHeight: 915),
              width: ResponsiveWidth(context, 392, designScreenWidth: 412),
              decoration: BoxDecoration(
                  color: UsedColors.background,
                  border: Border.all(
                      color: const Color.fromARGB(100, 255, 255, 255),
                      width: 2),
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.only(top: ResponsiveHeight(context, 15, designScreenHeight: 915)),
              child: Column(
                children: [
                  Text(
                    "Contact Us",
                    style: TextStyle(
                        color: UsedColors.yellow,
                        fontSize: ResponsiveFontSizeByWidth(context,20, designScreenWidth: 412),
                        fontWeight: FontWeight.w600),
                  ),
                  ResponsivePMaker(
                    vertical: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              LaunchURL(
                                  url: ContactClass.getContactLink("whatsApp"));
                            },
                            icon: CMaker(
                                height: ResponsiveHeight(context, 60,
                                    designScreenHeight: 915),
                                width: ResponsiveWidth(context, 60,
                                    designScreenWidth: 412),
                                child:
                                    Image.asset("images/ColoredWhatsApp.png"))),
                        IconButton(
                            onPressed: () {
                              LaunchURL(
                                  url: ContactClass.getContactLink("linkedin"));
                            },
                            icon: CMaker(
                                height: ResponsiveHeight(context, 60,
                                    designScreenHeight: 915),
                                width: ResponsiveWidth(context, 60,
                                    designScreenWidth: 412),
                                child:
                                    Image.asset("images/linkedin.png"))),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: ResponsiveHeight(context, 20, designScreenHeight: 915)),
              height: ResponsiveHeight(context, 150, designScreenHeight: 915),
              width: ResponsiveWidth(context, 392, designScreenWidth: 412),
              decoration: BoxDecoration(
                  color: UsedColors.background,
                  border: Border.all(
                      color: const Color.fromARGB(100, 255, 255, 255),
                      width: 2),
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.only(top: ResponsiveHeight(context, 15, designScreenHeight: 915)),
              child: Column(
                children: [
                  Text(
                    "Social Media",
                    style: TextStyle(
                        color: UsedColors.yellow,
                        fontSize:ResponsiveFontSizeByWidth(context,20, designScreenWidth: 412),
                        fontWeight: FontWeight.w600),
                  ),
                  ResponsivePMaker(
                    vertical: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {
                              LaunchURL(
                                  url: ContactClass.getContactLink("facebook"));
                            },
                            icon: CMaker(
                                height: ResponsiveHeight(context, 60,
                                    designScreenHeight: 915),
                                width: ResponsiveWidth(context, 60,
                                    designScreenWidth: 412),
                                child:
                                    Image.asset("images/ColoredFaceBook.png"))),
                        IconButton(
                            onPressed: () {
                              LaunchURL(
                                  url: ContactClass.getContactLink("instagram"));
                            },
                            icon: CMaker(
                                height: ResponsiveHeight(context, 60,
                                    designScreenHeight: 915),
                                width: ResponsiveWidth(context, 60,
                                    designScreenWidth: 412),
                                child:
                                    Image.asset("images/ColoredInstagram.png"))),
                        IconButton(
                            onPressed: () {
                              LaunchURL(
                                  url: ContactClass.getContactLink("tiktok"));
                            },
                            icon: CMaker(
                                height: ResponsiveHeight(context, 60,
                                    designScreenHeight: 915),
                                width: ResponsiveWidth(context, 60,
                                    designScreenWidth: 412),
                                child:
                                    Image.asset("images/ColoredTikTok.png"))),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ResponsivePMaker(
              vertical: 30,
            )
          ],
        ),
      ),
    );
  }
}
