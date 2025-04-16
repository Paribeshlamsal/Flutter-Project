import 'package:flutter/material.dart';

class Counterapp extends StatefulWidget {
  Counterapp({super.key});

  @override
  State<Counterapp> createState() => _CounterappState();
}

class _CounterappState extends State<Counterapp> {
  int counter = 0;

  Color getBackgroundColor() {
    if (counter > 0) return Colors.green.shade100;
    if (counter < 0) return Colors.red.shade100;
    return Colors.grey.shade200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: getBackgroundColor(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                counter > 0
                    ? "Positive"
                    : counter < 0
                    ? "Negative"
                    : "Zero",
                style: TextStyle(fontSize: 24, color: Colors.blueGrey),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
                child: Text("Reset"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = counter + 1;
              });
              print(counter);
            },
            child: Icon(Icons.add),
            heroTag: "add",
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter = counter - 1;
              });
              print(counter);
            },
            child: Icon(Icons.remove),
            heroTag: "remove",
          ),
        ],
      ),
    );
  }
}
