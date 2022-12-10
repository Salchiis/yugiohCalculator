import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .05,
      height: MediaQuery.of(context).size.width * .05,
      child: FloatingActionButton(
        backgroundColor: Colors.amber.shade900,
        onPressed: () => {},
        child: Icon(
          Icons.play_arrow,
          size: 15,
        ),
      ),
    );
  }
}
