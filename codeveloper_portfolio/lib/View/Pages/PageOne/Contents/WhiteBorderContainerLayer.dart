import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';
class WhiteBorderContainerLayer extends StatelessWidget {
  const WhiteBorderContainerLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CMaker(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 300,left: 120),
            height: double.infinity,
            width: double.infinity,
            child: CMaker(
              height: 350,
              width: 450,
              border: Border.all(color: Colors.white,width: 4),
          ));
  }
}