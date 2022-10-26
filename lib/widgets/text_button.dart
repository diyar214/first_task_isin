import 'package:flutter/material.dart';

import './my_text.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.text,
    required this.currentIndex,
    required PageController controller,
    required this.onPressed, required this.style,
  })  : _controller = controller,
        super(key: key);

  final String text;
  final TextStyle style;
  final int currentIndex;
  final PageController _controller;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(currentIndex, context, _controller),
      style: TextButton.styleFrom(
        foregroundColor: Colors.blueAccent,
      ),
      child: MyText(
        myText: text,
        myStyle: style,
      ),
    );
  }
}

