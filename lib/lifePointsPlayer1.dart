import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LifePointsPlayer1 extends StatefulWidget {
  const LifePointsPlayer1({super.key});

  @override
  State<LifePointsPlayer1> createState() => _LifePointsPlayer1State();
}

class _LifePointsPlayer1State extends State<LifePointsPlayer1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [Text("8000")],
      ),
    );
  }
}
