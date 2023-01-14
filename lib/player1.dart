import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yugiohcalculator/Advantage.dart';
import 'package:yugiohcalculator/lifePointsPlayer1.dart';
import 'package:yugiohcalculator/playerName.dart';

class Player1 extends StatefulWidget {
  final Color color;
  final int vida;
  const Player1({super.key, required this.color, required this.vida});

  @override
  State<Player1> createState() => _Player1State();
}

class _Player1State extends State<Player1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .50,
      decoration: BoxDecoration(
        color: widget.color,
      ),
      child: Column(
        children: [
          const PlayerName(),
          Center(
            child: LifePointsPlayer1(
              vida: widget.vida,
            ),
          ),
          Advantage(),
        ],
      ),
    );
  }
}
