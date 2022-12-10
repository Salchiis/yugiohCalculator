import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:yugiohcalculator/MusicPlayer.dart';
import 'package:yugiohcalculator/player1.dart';
import 'package:flutter/material.dart';
import 'package:yugiohcalculator/player2.dart';
import 'package:yugiohcalculator/selectDeck.dart';
import 'package:yugiohcalculator/timer.dart';

class CalculatorLayout extends StatelessWidget {
  const CalculatorLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Player1(),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Player2(),
            ),
            Center(child: MusicPlayer()),
            Align(
              alignment: Alignment.topCenter,
              child: OtpTimer(),
            ),
          ],
        ),
      ),
    );
  }
}
