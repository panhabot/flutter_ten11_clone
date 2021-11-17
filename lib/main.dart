import 'package:flutter/material.dart';
import 'package:ten11_clone/screen/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ten11 Clone',
      theme: ThemeData(
        fontFamily: 'Roboto Condensed',
        primarySwatch: Colors.grey,
      ),
      home: const HomePage(),
    );
  }
}

