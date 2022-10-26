import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    Key? key,
    required this.myText, required this.myStyle,
  }) : super(key: key);


  final String myText;
  final TextStyle myStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style: myStyle,
    );
  }
}