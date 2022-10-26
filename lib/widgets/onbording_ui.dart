import 'package:flutter/material.dart';

import '../model/page_model.dart';

class OnbordingUi extends StatelessWidget {
  const OnbordingUi({
    Key? key, required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          PageModel.pages[index].image,
          height: 280,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          PageModel.pages[index].title,
          style: const TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          PageModel.pages[index].desc,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black26,
          ),
        ),
      ],
    );
  }
}