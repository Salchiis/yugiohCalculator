import 'package:flutter/material.dart';
import 'package:yugiohcalculator/calculatorLayout.dart';
import 'package:flutter/services.dart';

void run() {}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(MaterialApp(
    home: Scaffold(
      body: CalculatorLayout(),
    ),
  ));
}
