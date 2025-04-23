import 'package:flutter/material.dart';

class Listviewbuilder extends StatelessWidget {
  const Listviewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Builder')),
      body: ListView.builder(
        itemBuilder: (ctx, i) {
          return Text(
            i.toString(),
            style: const TextStyle(fontSize: 20, color: Colors.black),
          );
        },
        itemCount: 60,
      ),
    );
  }
}
