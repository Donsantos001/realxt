import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor primary = MaterialColor(
    0xffe55f48,
    <int, Color>{
      50: Color(0xffce5641),
      100: Color(0xffb74c3a),
      200: Color(0xffa04332),
      300: Color(0xff89392b),
      400: Color(0xff733024),
      500: Color(0xff5c261d),
      600: Color(0xff451c16),
      700: Color(0xff2e130e),
      800: Color(0xff170907),
      900: Color(0xff000000),
    },
  );

  static MaterialColor secondary = MaterialColor(
    const Color.fromRGBO(12, 168, 148, 1).value,
    const <int, Color>{
      50: Color.fromRGBO(12, 168, 148, 0.1),
      100: Color.fromRGBO(12, 168, 148, 0.2),
      200: Color.fromRGBO(12, 168, 148, 0.3),
      300: Color.fromRGBO(12, 168, 148, 0.4),
      400: Color.fromRGBO(12, 168, 148, 0.5),
      500: Color.fromRGBO(12, 168, 148, 0.6),
      600: Color.fromRGBO(12, 168, 148, 0.7),
      700: Color.fromRGBO(12, 168, 148, 0.8),
      800: Color.fromRGBO(12, 168, 148, 0.9),
      900: Color.fromRGBO(12, 168, 148, 1),
    },
  );

  static MaterialColor tertiary = MaterialColor(
    Colors.purpleAccent.value,
    <int, Color>{
      50: Colors.purpleAccent.withOpacity(0.1),
      100: Colors.purpleAccent.withOpacity(0.2),
      200: Colors.purpleAccent.withOpacity(0.3),
      300: Colors.purpleAccent.withOpacity(0.4),
      400: Colors.purpleAccent.withOpacity(0.5),
      500: Colors.purpleAccent.withOpacity(0.6),
      600: Colors.purpleAccent.withOpacity(0.7),
      700: Colors.purpleAccent.withOpacity(0.8),
      800: Colors.purpleAccent.withOpacity(0.9),
      900: Colors.purpleAccent.withOpacity(1),
    },
  );

  static MaterialColor green = MaterialColor(
    Colors.green.value,
    <int, Color>{
      50: Colors.green.withOpacity(0.1),
      100: Colors.green.withOpacity(0.2),
      200: Colors.green.withOpacity(0.3),
      300: Colors.green.withOpacity(0.4),
      400: Colors.green.withOpacity(0.5),
      500: Colors.green.withOpacity(0.6),
      600: Colors.green.withOpacity(0.7),
      700: Colors.green.withOpacity(0.8),
      800: Colors.green.withOpacity(0.9),
      900: Colors.green.withOpacity(1),
    },
  );

  static List<MaterialColor> rankColors = [
    Colors.lightBlue,
    Colors.pink,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    // Palette.primary,
    // Palette.secondary,
    // Palette.tertiary,
    // Palette.green,
  ];
}
