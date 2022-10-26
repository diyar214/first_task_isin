import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/page_model.dart';

class DotIndicatorWidget extends StatelessWidget {
  const DotIndicatorWidget({
    Key? key,
    required PageController controller,
  }) : _controller = controller, super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      alignment: Alignment.center,
      child: SmoothPageIndicator(
        controller: _controller,
        count: PageModel.pages.length,
        effect: const WormEffect(
          activeDotColor: Colors.blueAccent,
          dotColor: Colors.black26,
          dotHeight: 10.0,
          dotWidth: 10.0,
        ),
      ),
    );
  }
}