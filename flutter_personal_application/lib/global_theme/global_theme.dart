import 'package:flutter/material.dart';

const List<Color> backgroundGradient = [Color(0xff020202), Color(0xff020202)];
const Color primaryTextColor = Colors.white;

const TextStyle boldTextStyle = TextStyle(
  color: primaryTextColor,
  fontWeight: FontWeight.bold,
);

const List<Color> gradientGreenYellow = [Colors.green, Colors.yellow];
const List<Color> gradientRedBlue = [Colors.red, Colors.blue];
const List<Color> gradientPurpleBlack = [Colors.purple, Colors.black];
const List<Color> gradientBrownCyan = [Colors.brown, Colors.cyan];

final ThemeData appTheme = ThemeData(
  primaryColor: primaryTextColor,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
  ),
  scaffoldBackgroundColor: Colors.black,
);
