import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:codeveloper_portfolio/View/Pages/PageOne/Contents/WhiteBorderContainerLayer.dart';
import 'package:codeveloper_portfolio/View/Pages/PageOne/Contents/YellowhalfBorderContainerLayer.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return CMaker(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          YellowHalfBorderContainerLayer(),
          WhiteBorderContainerLayer()
        ],
      ),
    );
  }
}
