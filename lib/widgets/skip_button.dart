import 'package:flutter/material.dart';

import '../home.dart';
import 'text_button.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
    required this.currentIndex,
    required PageController controller,
  }) : _controller = controller, super(key: key);

  final int currentIndex;
  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 20),
      child: Align(
        alignment: Alignment.topRight,
        child: MyTextButton(
            text: 'Skip',
            style: const TextStyle(
              fontSize: 20, color: Colors.blueAccent, fontWeight: FontWeight.w400,
            ),
            currentIndex: currentIndex,
            controller: _controller,
            onPressed: (int currentIndex, context, controller) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => const Home(),
                ),
              );
            }),
      ),
    );
  }
}