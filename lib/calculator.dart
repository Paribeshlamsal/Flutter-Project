import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();
  double result = 0;

  void _calculate(String operation) {
    double num1 = double.parse(firstNumberController.text);
    double num2 = double.parse(secondNumberController.text);

    setState(() {
      switch (operation) {
        case 'add':
          result = num1 + num2;
          break;
        case 'subtract':
          result = num1 - num2;
          break;
        case 'multiply':
          result = num1 * num2;
          break;
        case 'divide':
          result = num2 != 0 ? num1 / num2 : 0;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blueAccent,
      //   title: const Text(
      //     "Let's make an calculator to find addition, subtraction, multiplication and division",
      //   ),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          color: Colors.blue[100],
          width: 400,
          height: 600,

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "Simple Calculator",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: firstNumberController,
                  decoration: InputDecoration(
                    labelText: 'Enter first Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 3.0,
                      ),
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                TextField(
                  controller: secondNumberController,
                  decoration: InputDecoration(
                    labelText: 'Enter second Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 3.0,
                      ),
                    ),
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _calculate('add'),
                  child: const Text('ADD'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => _calculate('subtract'),
                  child: const Text('SUBTRACT'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => _calculate('multiply'),
                  child: const Text('MULTIPLY'),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => _calculate('divide'),
                  child: const Text('DIVIDE'),
                ),
                const SizedBox(height: 20),
                Text(
                  'Result:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'The result is $result',
                  style: const TextStyle(fontSize: 30, color: Colors.black),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    firstNumberController.clear();
                    secondNumberController.clear();
                    setState(() {
                      result = 0;
                    });
                  },
                  child: const Text('Clear'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
