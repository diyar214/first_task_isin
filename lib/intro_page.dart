// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import './home_page.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  final pageDecoration = PageDecoration(
    imagePadding: const EdgeInsets.only(top: 65.0),
    bodyAlignment: const Alignment(0, 0.01),
    titleTextStyle: const PageDecoration().titleTextStyle.copyWith(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26.0),
    bodyTextStyle: const PageDecoration().bodyTextStyle.copyWith(color: Colors.black.withOpacity(0.7)),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Center(child: Image.asset('assets/images/img1.png')),
        title: 'Shoot',
        body:
            'Lorem ipsum dolor sit amet,\nconsectetur adlipicing elit, sed do\neiusmod tempor incididunt ut labore',
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Center(child: Image.asset('assets/images/img2.png')),
        title: 'Edit',
        body:
            'Lorem ipsum dolor sit amet,\nconsectetur adlipicing elit, sed do\neiusmod tempor incididunt ut labore',
        decoration: pageDecoration,
      ),
      PageViewModel(
        image: Center(child: Image.asset('assets/images/img3.png')),
        title: 'Share',
        body:
            'Lorem ipsum dolor sit amet,\nconsectetur adlipicing elit, sed do\neiusmod tempor incididunt ut labore',
        decoration: pageDecoration,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: IntroductionScreen(
          pages: getPages(),
          dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(25.0, 10.0),
            activeColor: Colors.blue,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 4.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.5),
            ),
          ),
          baseBtnStyle: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.5),
            ),
          ),
          showDoneButton: true,
          done: const Text('Done',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0)),
          doneStyle: TextButton.styleFrom(primary: Colors.blueAccent),
          showSkipButton: true,
          skip: const Text('Skip',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0)),
          skipStyle: TextButton.styleFrom(primary: Colors.blueAccent),
          showNextButton: true,
          next: const Text('Next',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0)),
          nextStyle: TextButton.styleFrom(primary: Colors.blueAccent),
          onDone: () => onDone(context),
            curve: Curves.elasticIn,
        ),
      ),
    );
  }

  void onDone(context) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
