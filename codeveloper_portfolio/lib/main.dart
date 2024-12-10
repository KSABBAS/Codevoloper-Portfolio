import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:codeveloper_portfolio/View/Home.dart';
import 'package:codeveloper_portfolio/View/Pages/ProjectsPage/ProjectIsOpened.dart';
import 'package:codeveloper_portfolio/View/Pages/ProjectsPage/ProjectsPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: ProjectIsOpened(),
    );
  }
}
