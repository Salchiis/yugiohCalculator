import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class PlayerName extends StatelessWidget {
  const PlayerName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: MediaQuery.of(context).size.width * .30,
        height: MediaQuery.of(context).size.width * .10,
        decoration: BoxDecoration(),
        child: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Pon tu nombre de duelista",
          ),
        ),
      ),
    );
  }
}
