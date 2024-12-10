import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Row(
        children: [
          CMaker(
            color: Colors.red,
            height: PageHeight(context),
            width: ResponsiveWidth(context, 438),
            child: Column(
              children: [
                PMaker(
                  vertical: ResponsiveHeight(context, 10),
                ),
                CMaker(
                  color: UsedColors.background,
                  height: ResponsiveHeight(context, 5),
                  width: ResponsiveWidth(context, 200),
                ),
                PMaker(
                  vertical: ResponsiveHeight(context, 50),
                ),
                Transform.rotate(
                  angle: -90 * 3.14 / 180, // لتدوير النص
                  child: Text(
                    "FLIO",
                    style: TextStyle(
                      fontSize: ResponsiveFontSizeByWidth(context, 130),
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                Padding(
                    padding:
                        EdgeInsets.only(top: ResponsiveWidth(context, 160))),
                Transform.rotate(
                  angle: -90 * 3.14 / 180, // لتدوير النص
                  child: Text(
                    "PORTO",
                    style: TextStyle(
                      fontSize: ResponsiveFontSizeByWidth(context, 130),
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CMaker(
            color: const Color.fromARGB(255, 22, 9, 8),
            height: PageHeight(context),
            width: ResponsiveWidth(context, 1098),
            child: Column(
              children: [
                Container(
                  height:
                      ResponsiveHeight(context, 200, designScreenHeight: 705),
                  width:
                      ResponsiveWidth(context, 1036, designScreenWidth: 1240),
                  //color: const Color.fromARGB(255, 91, 73, 72),
                  child: Row(
                    children: [
                      Container(
                        // margin: EdgeInsets.only(left: 50),
                        height: 150,
                        width: 5,
                        color: Colors.white,
                      ),
                      //   Padding(padding: EdgeInsets.only(left: 50, top: 80)),
                      Container(
                          //color: Colors.blue,
                          child: Column(
                        children: [
                          Text(
                            "See Our",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: Text("Team",
                                style: TextStyle(
                                    fontSize: 50,
                                    color: const Color.fromARGB(
                                        255, 249, 227, 27))),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                CMaker(
                  margin: EdgeInsets.symmetric(vertical:  ResponsiveHeight(context,20),horizontal:  ResponsiveWidth(context,20)),
                  color: UsedColors.Gray,
                  circularRadius: 20,
                  height: ResponsiveHeight(
                    context,
                     545,
                  ),
                  width: ResponsiveWidth(
                    context,
                    1035,
                  ),
                  child: WGridBuilder(
                    childColor: Colors.transparent,
                    builder: (Index) {
                      return InkWell(
                        onHover: (value) {
                          // if (value) {
                            print(Index);
                          // }
                        },
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdQLwDqDwd2JfzifvfBTFT8I7iKFFevcedYg&s",fit: BoxFit.cover,),
                      );
                    },
                    itemCount: 24,
                    rowSpaces:ResponsiveHeight(context,10),
                    columnSpaces:ResponsiveWidth(context,18),
                    crossAxisCount: 3,
                    childHeight:ResponsiveHeight(context,300),
                    childWidth:ResponsiveWidth(context, 320),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
