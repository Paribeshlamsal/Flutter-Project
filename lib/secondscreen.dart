import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  const SecondScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Column(
        children: [
          Text(name),
          Center(
            child: FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Go Back"),
            ),
          ),
        ],
      ),
    );
  }
}
