import 'package:flutter/material.dart';
import 'package:yugiohcalculator/calculatorLayout.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(const CalculatorLayout());
}
