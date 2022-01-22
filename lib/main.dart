import 'package:flutter/material.dart';
import 'package:slider_screen/intro_slider.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/logo.jpg',
          width: 1000,
          height:  1000,
        ),
        nextScreen:IntroSliderPage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.green,
        duration: 6000,
      ),

    );
  }
}

