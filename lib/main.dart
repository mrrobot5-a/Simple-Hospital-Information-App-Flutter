// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_project/screens/HomeScreen.dart';
import 'package:second_project/widgets/HeaderOfHomeView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Color(0xff265ed7),
            centerTitle: true,
            title: const Text(
              "Doctor Profile",
              style: TextStyle(
                fontFamily: 'Flux',
                fontSize: 29,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: HomeView(),
        ),
      ),
    );
  }
}
