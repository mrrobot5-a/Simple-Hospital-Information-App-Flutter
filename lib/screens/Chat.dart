import 'package:flutter/material.dart';
import 'package:second_project/screens/HomeScreen.dart';

import '../widgets/TextHeading.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff265ed7),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: const TextHeading(
          text: "Chat",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: TextHeading(
            fontSize: 40,
            text: "Coming Soon",
          ),
        ),
      ),
    );
  }
}
