import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Advantage extends StatefulWidget {
  const Advantage({super.key});

  @override
  State<Advantage> createState() => _AdvantageState();
}

class _AdvantageState extends State<Advantage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.greenAccent[400],
                radius: 20,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ), //Text
              ),
              CircleAvatar(
                backgroundColor: Colors.greenAccent[400],
                radius: 20,
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ), //Text
              ),
            ],
          )),
    ); //Center
  }
}
