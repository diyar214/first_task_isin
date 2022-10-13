import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.blueAccent,
    elevation: 1,
    centerTitle: true,
    title: const Text(
      'Home Page',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
}
