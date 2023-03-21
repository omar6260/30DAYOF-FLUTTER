
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


import 'main_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<PageViewModel> page = [
    PageViewModel(
      title: "Welcome",
      body:
          "My name is Oumar, Moblie flutter developer with one year experience in the field.",
      image: Image.asset("assets/learn.png"),
      decoration: const PageDecoration(
        pageColor: Colors.white,
        bodyTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: "Motivation",
      body:
          "Extremely motivated to develop my skills and and gain experience humanl.",
      image: Image.asset("assets/flutter1.png"),
      decoration: const PageDecoration(
        pageColor: Colors.white,
        bodyTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: "Projet",
      body: "learnig by doing and make to project..",
      image: Image.asset("assets/flutter2.png"),
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
              context,
              MaterialPageRoute(
                  builder: (context) => const MainScreen(
                        title: 'main',
                      )));
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
