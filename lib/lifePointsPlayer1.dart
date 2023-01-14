import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LifePointsPlayer1 extends StatefulWidget {
  final int vida;
  const LifePointsPlayer1({super.key, required this.vida});

  @override
  State<LifePointsPlayer1> createState() => _LifePointsPlayer1State();
}

class _LifePointsPlayer1State extends State<LifePointsPlayer1> {
  int vidaChida = 8000;
  @override
  void initState() {
    super.initState();
  }

  void restarVida() {
    vidaChida = vidaChida - 5;
  }

  /* void setCountDown() {
    final red uceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }*/

  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$vidaChida'),
        FloatingActionButton.small(onPressed: (() => {restarVida()}))
      ],
    );
  }
}
