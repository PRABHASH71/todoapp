import 'package:flutter/material.dart';
import 'package:todo/dashboard.dart';
import 'package:todo/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      home: dashboard(),
    );
  }
}
