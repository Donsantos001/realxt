import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:realestate/pages/introslider.dart';
import 'package:realestate/pages/landing.dart';
import 'package:realestate/pages/tenant/home.dart';
import 'package:realestate/resource/palette.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Lato",
        // brightness: Brightness.dark,
        primaryColor: Palette.secondary,
        primarySwatch: Palette.secondary,
      ),
      home: const IntroSlider(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
