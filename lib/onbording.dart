import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import './model/page_model.dart';
import './home.dart';

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
          Expanded(
            child: myPageViewBuilder(),
          ),
          buildNextButton(context),
          dotIndicator(),
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
            child: onbordingUi(i),
          );
        });
  }

  Widget onbordingUi(int i) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          PageModel.pages[i].image,
          height: 280,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          PageModel.pages[i].title,
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
          PageModel.pages[i].desc,
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

  // Widget buildSkipButton() {
  //   return Padding(
  //     padding: const EdgeInsets.only(top: 50, right: 20),
  //     child: Align(
  //       alignment: Alignment.topRight,
  //       child: TextButton(
  //         onPressed: () {
  //           _controller.animateTo(PageModel.pages.length - 1, duration: const Duration(milliseconds: 300), curve: Curves.linear);
  //         },
  //         style: TextButton.styleFrom(
  //           foregroundColor: Colors.blueAccent,
  //         ),
  //         child: const Text(
  //           'Skip',
  //           style: TextStyle(
  //             fontSize: 18,
  //             fontWeight: FontWeight.w500,
  //             color: Colors.blueAccent,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget buildNextButton(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.all(40),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: TextButton(
        onPressed: () {
          if (currentIndex == PageModel.pages.length - 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => const Home(),
              ),
            );
          }
          _controller.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.linear,
          );
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.blueAccent,
        ),
        child: Text(
          currentIndex == PageModel.pages.length - 1 ? 'Get Started' : 'Next',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget dotIndicator() {
    return Container(
      height: 100,
      width: double.infinity,
      alignment: Alignment.center,
      // color: Colors.grey,
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
