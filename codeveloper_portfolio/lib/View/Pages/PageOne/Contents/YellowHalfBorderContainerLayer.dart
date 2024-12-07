import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';
class YellowHalfBorderContainerLayer extends StatelessWidget {
  const YellowHalfBorderContainerLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return CMaker(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(top: 50,left: 50),
            height: double.infinity,
            width: double.infinity,
            child: CMaker(
              height: 450,
              width: 450,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color.fromARGB(255, 210, 191, 35),
                    const Color.fromARGB(255, 210, 191, 35),
                    const Color.fromARGB(255, 29, 29, 32),
                    const Color.fromARGB(255, 29, 29, 32),
                    const Color.fromARGB(255, 29, 29, 32),
                    const Color.fromARGB(255, 29, 29, 32),
                  ]),
              alignment: Alignment.center,
              border: Border(
                  bottom: BorderSide(
                      color: const Color.fromARGB(255, 29, 29, 32), width: 7),
                  right: BorderSide(
                      color: const Color.fromARGB(255, 29, 29, 32), width: 7)),
              child: CMaker(
                height: 410,
                width: 410,
                color: const Color.fromARGB(255, 29, 29, 32),
              ),
            ),
          );
  }
}