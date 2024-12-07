import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:codeveloper_portfolio/View/Pages/ContactUs/ContactUs.dart';
import 'package:codeveloper_portfolio/View/Pages/MembersPage/MembersPage.dart';
import 'package:codeveloper_portfolio/View/Pages/PageOne/PageOne.dart';
import 'package:codeveloper_portfolio/View/Pages/ProjectsPage/ProjectsPage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int currentPageIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: double.infinity,
          width: double.infinity,
          alignment: (currentPageIndex==0)?Alignment.centerRight:Alignment.centerLeft,
          color: const Color.fromARGB(255, 29, 29, 32),
          child: CMaker(
            color:const Color.fromARGB(255, 210, 191, 35),
            height: double.infinity,
            width: 300,
          ),
        ),
        NavBar(
              NavBarPositionTop: 20,
              NavBarPositionRight: 40,
              SelectionContainerAnimationDuration: Duration(milliseconds: 200),
              ScrollDuration: Duration(seconds: 20),
              pageBackgroundColor: Colors.transparent,
              BarCircularRadius: 30,
              SelectionContainerHeight: 30,
              SelectionContainerWidth: 30,
              selectedContainerColor: Colors.transparent,
              SelectedContainerBorder: Border.all(color: Colors.white),
              SelectionContainerCircularRadius: 50,
              pages: [PageOne(), MembersPage(), ProjectsPage(), ContactUsPage()],
              onPageChange: (index) {
                currentPageIndex = index;
                setState(() {
                });
              },
              barColor: const Color.fromARGB(255, 77, 77, 77),
              iconsList: [
                Icon(Icons.home),
                Icon(Icons.people),
                Icon(Icons.person),
              ],
              height: 40,
              width: 200),
      ],
    );
  }
}
