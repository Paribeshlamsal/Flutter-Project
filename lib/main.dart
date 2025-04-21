import 'package:flutter/material.dart';
import 'package:flutter_application_4/Example.dart';
import 'package:flutter_application_4/Img.dart';
// import 'package:flutter_application_4/abc.dart';
import 'package:flutter_application_4/button_example.dart';
import 'package:flutter_application_4/calculator.dart';
import 'package:flutter_application_4/counterapp.dart';
import 'package:flutter_application_4/design.dart';
import 'package:flutter_application_4/firstpage.dart';
import 'package:flutter_application_4/form_example.dart';
import 'package:flutter_application_4/homepage.dart';
import 'package:flutter_application_4/newdesign.dart';
import 'package:flutter_application_4/sizebox.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Design(), // Change this to the desired widget
    );
  }
}
