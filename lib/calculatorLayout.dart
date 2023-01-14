import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:yugiohcalculator/MusicPlayer.dart';
import 'package:yugiohcalculator/player1.dart';
import 'package:flutter/material.dart';
import 'package:yugiohcalculator/selectDeck.dart';
import 'package:yugiohcalculator/timer.dart';

class CalculatorLayout extends StatelessWidget {
  const CalculatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Color color1 = Colors.purple;
    Color color2 = Colors.amber;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Player1(
              color: color1,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Player1(
              color: color2,
            ),
          ),
          /*Center(
            child: Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .7),
              child: MusicPlayer(),
            ),
          ),*/
          Align(
            alignment: Alignment.topCenter,
            child: OtpTimer(),
          ),
        ],
      ),
    );
  }
}
