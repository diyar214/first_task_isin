import 'package:flutter/material.dart';

import '../home.dart';
import '../model/page_model.dart';
import 'text_button.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key,
    required this.currentIndex,
    required PageController controller,
  }) : _controller = controller, super(key: key);

  final int currentIndex;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(40),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: MyTextButton(
        text: currentIndex == PageModel.pages.length - 1 ? 'Get Started' : 'Next',
        style: const TextStyle(
          fontSize: 22, color: Colors.white, fontWeight: FontWeight.w600,
        ),
        currentIndex: currentIndex,
        controller: _controller,
        onPressed: (int currentIndex, context, controller) {
          if (currentIndex == PageModel.pages.length - 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => const Home(),
              ),
            );
          }
          controller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        },
      ),
    );
  }
}