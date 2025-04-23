import 'package:flutter/material.dart';
import 'package:flutter_application_4/secondscreen.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Screen")),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SecondScreen(name: "Hello")),
            );
          },
          child: const Text("Click Here"),
        ),
      ),
    );
  }
}
