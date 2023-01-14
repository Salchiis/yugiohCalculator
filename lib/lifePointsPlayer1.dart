import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LifePointsPlayer1 extends StatefulWidget {
  @override
  State<LifePointsPlayer1> createState() => _LifePointsPlayer1State();
}

class _LifePointsPlayer1State extends State<LifePointsPlayer1> {
  var vidaChida = 10;
  @override
  void initState() {
    super.initState();
  }

  void restarVida() {
    if (vidaChida <= 0) {
      print("Perdiste");
    } else {
      vidaChida = vidaChida - 5;
    }
  }

  void reiniciarVida() {
    vidaChida = 8000;
  }

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$vidaChida'),
        FloatingActionButton.small(
            onPressed: () => {setState(() => restarVida())}),
        FloatingActionButton.small(
            onPressed: () => {setState(() => reiniciarVida())}),
      ],
    );
  }
}
