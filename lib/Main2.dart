import 'package:flutter/material.dart';

class main2 extends StatefulWidget {
  const main2({super.key});

  @override
  State<main2> createState() => _main2State();
}

class _main2State extends State<main2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 108, 154),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Amisha"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.black, Colors.red]),
        ),
        child: Container(
          child: Text("hello world"),
        ),
      ),
    );
  }
}
