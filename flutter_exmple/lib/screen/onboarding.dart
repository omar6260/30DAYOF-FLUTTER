import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_exmple/screen/home.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<PageViewModel> page = [
    PageViewModel(
      title: "Welcome to App",
      body:
          "My apps is a platform that allows you to connect with people who are in need of your help.",
      image: Image.asset("assets/hack.png"),
      decoration: const PageDecoration(
        pageColor: Colors.white,
        bodyTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: "How it works",
      body:
          "My app is a platform that allows you to connect with people who are in need of your help.",
      image: Image.asset("assets/flutter1.jpg"),
      decoration: const PageDecoration(
        pageColor: Colors.white,
        bodyTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: "How it works",
      body:
          "My app is a platform that allows you to connect with people who are in need of your help.",
      image: Image.asset("assets/flutter2.jpg"),
      decoration: const PageDecoration(
        pageColor: Colors.white,
        bodyTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: page,
        onDone: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        showSkipButton: true,
        skip: const Text('Skip'),
        next: const Icon(Icons.arrow_forward),
        done: const Text('Terminé',
            style: TextStyle(fontWeight: FontWeight.w600)),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Colors.blue,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
