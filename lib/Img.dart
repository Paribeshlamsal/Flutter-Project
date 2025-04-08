import 'package:flutter/material.dart';

class Img extends StatelessWidget {
  const Img({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("This is title"),
      //   centerTitle: true,
      //   backgroundColor: Colors.green,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Icon(Icons.favorite, color: Colors.red, size: 90),
              Image.network(
                "https://images.pexels.com/photos/1557652/pexels-photo-1557652.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                width: 500,
                height: 500,
                fit: BoxFit.contain,
              ),
              Image.asset(
                "assets/images/paritosh.jpg",
                height: 500,
                width: 500,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
