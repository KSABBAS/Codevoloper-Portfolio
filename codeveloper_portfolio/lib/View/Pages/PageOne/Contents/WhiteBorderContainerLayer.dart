import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';
class WhiteBorderContainerLayer extends StatelessWidget {
  const WhiteBorderContainerLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CMaker(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top:ResponsiveHeight(context, 300),left:ResponsiveHeight(context, 120)),
            height: double.infinity,
            width: double.infinity,
            child: CMaker(
              height:ResponsiveHeight(context,350),
              width: ResponsiveWidth(context,450),
              border: Border.all(color: Colors.white,width: 4),
          ));
  }
}