import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yugiohcalculator/Advantage.dart';
import 'package:yugiohcalculator/lifePointsPlayer1.dart';
import 'package:yugiohcalculator/playerName.dart';

class Player1 extends StatelessWidget {
  const Player1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .50,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
      ),
      child: Column(
        children: const [
          PlayerName(),
          LifePointsPlayer1(), /* Advantage()*/
        ],
      ),
    );
  }
}
