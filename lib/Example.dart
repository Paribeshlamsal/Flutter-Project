import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is title"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 500,
            height: 500,
            color: Colors.red,
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 200, height: 100, color: Colors.black),
                    Text(
                      "Hello !! How are you ?",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Container(width: 200, height: 100, color: Colors.black),
                  ],
                ),
                Container(width: 150, height: 100, color: Colors.black),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
