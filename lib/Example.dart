import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is titile"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisSize: MainAxisSize.max,

      //   children: [
      //     Text("This is Column", style: TextStyle(fontSize: 28)),
      //     Container(width: 200, height: 200, color: Colors.red),
      //   ],
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(18.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Text("This is Row", style: TextStyle(fontSize: 28)),
      //       Container(width: 200, height: 200, color: Colors.black),
      //     ],
      //   ),
      // ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 500,
            height: 500,
            color: Colors.red,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(20),
            child: Container(width: 200, height: 100, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
