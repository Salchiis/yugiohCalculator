import 'dart:async';

import 'package:flutter/material.dart';

class OtpTimer extends StatefulWidget {
  @override
  _CountdownTimerDemoState createState() => _CountdownTimerDemoState();
}

class _CountdownTimerDemoState extends State<OtpTimer> {
  // Step 2
  Timer? countdownTimer;
  Duration myDuration = Duration(minutes: 45);
  @override
  void initState() {
    super.initState();
  }

  /// Timer related methods ///
  // Step 3
  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  // Step 4
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  // Step 5
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(minutes: 45));
  }

  // Step 6
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final days = strDigits(myDuration.inDays);
    // Step 7
    final minutes = strDigits(myDuration.inMinutes.remainder(45));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Center(
      child: Column(
        children: [
          // Step 8
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 40),
            child: Container(
              color: Colors.white,
              child: Text(
                '$minutes:$seconds',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 50),
              ),
            ),
          ),

          // Step 9
          ElevatedButton(
            onPressed: startTimer,
            style: ElevatedButton.styleFrom(primary: Colors.green),
            child: Text(
              'Empezar',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          // Step 10
          ElevatedButton(
            onPressed: () {
              if (countdownTimer == null || countdownTimer!.isActive) {
                stopTimer();
              }
            },
            style: ElevatedButton.styleFrom(primary: Colors.red),
            child: Text(
              'Detener',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          // Step 11
          ElevatedButton(
              onPressed: () {
                resetTimer();
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child: Text(
                'Reiniciar',
                style: TextStyle(
                  fontSize: 30,
                ),
              ))
        ],
      ),
    );
  }
}
