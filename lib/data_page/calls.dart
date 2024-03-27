import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Container(
          height: 350,
          width: 250,
          color: Colors.black87,
         )
        ],
      )
    );
  }
}