import 'package:flutter/material.dart';

import './model/page_model.dart';
import 'widgets/dot_indicator_widget.dart';
import 'widgets/next_button.dart';
import 'widgets/onbording_ui.dart';
import 'widgets/skip_button.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SkipButton(currentIndex: currentIndex, controller: _controller),
          Expanded(
            child: myPageViewBuilder(),
          ),
          NextButton(currentIndex: currentIndex, controller: _controller),
          DotIndicatorWidget(controller: _controller),
        ],
      ),
    );
  }

  Widget myPageViewBuilder() {
    return PageView.builder(
        controller: _controller,
        itemCount: PageModel.pages.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: OnbordingUi(index: i),
          );
        });
  }
}
