import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:flutter/material.dart';

class ProjectIsOpened extends StatefulWidget {
  const ProjectIsOpened({super.key});

  @override
  State<ProjectIsOpened> createState() => _ProjectIsOpenedState();
}

class _ProjectIsOpenedState extends State<ProjectIsOpened> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.all(ResponsiveFontSizeByWidth(context, 20)),
          child: Column(
            children: [
              Container(
                width: ResponsiveWidth(context, double.infinity,
                    designScreenWidth: 1034),
                height: ResponsiveHeight(context, 100, designScreenHeight: 613),
                child: Row(children: [
                  Container(
                      width: ResponsiveWidth(context, 100,
                          designScreenWidth: 1034),
                      height: ResponsiveHeight(context, 100,
                          designScreenHeight: 613),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                          "https://th.bing.com/th/id/R.3b21fb0f8b6a6f919d17f27b1e380b51?rik=RAGq14Ouf1ClsA&pid=ImgRaw&r=0")),
                  SizedBox(width: 5),
                  Text(
                    'Name',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: ResponsiveFontSizeByHeight(context, 16,designScreenHeight: 613,),
                        fontWeight: FontWeight.w200),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward))
                ]),
              ),
              Container(
                  width: ResponsiveWidth(context, double.infinity,
                      designScreenWidth: 1034),
                  height:
                      ResponsiveHeight(context, 60, designScreenHeight: 613),
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: ResponsiveWidth(context, 600,
                          designScreenWidth: 1034),
                      height: ResponsiveHeight(context, 50,
                          designScreenHeight: 613),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 34, 33, 33),
                        borderRadius: BorderRadius.circular(16),
                      ))),
              SizedBox(height: 20),
              Center(
                child: Container(
                  padding: EdgeInsets.only(
                      top: ResponsiveFontSizeByHeight(
                        context,
                        9,
                        designScreenHeight: 613,
                      ),
                      bottom: ResponsiveFontSizeByWidth(
                        context,
                        9,
                        designScreenWidth: 1034,
                      )),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 34, 33, 33),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: ResponsiveWidth(context, 308,
                                designScreenWidth: 1034),
                            height: ResponsiveHeight(context, 200,
                                designScreenHeight: 613),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 88, 88, 88),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            // child: icon != null ? Icon(icon, color: Colors.black, size: 60) : null,
                          ),
                          Container(
                              width: ResponsiveWidth(context, 310,
                                  designScreenWidth: 1034),
                              height: ResponsiveHeight(context, 200,
                                  designScreenHeight: 613),
                              child: ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  itemCount: 20,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: ResponsiveWidth(context, 308,
                                          designScreenWidth: 1034),
                                      height: ResponsiveHeight(context, 200,
                                          designScreenHeight: 613),
                                      decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 88, 88, 88),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      // child: icon != null ? Icon(icon, color: Colors.black, size: 60) : null,
                                    );
                                  }))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(
                    top: ResponsiveFontSizeByWidth(
                  context,
                  16,
                  designScreenWidth: 1034,
                )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.download_for_offline_rounded,
                        color: Colors.black),
                    SizedBox(width: 10),
                    Icon(Icons.language, color: Colors.black),
                    SizedBox(width: 10),
                    Image.asset("images/github.png"),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
