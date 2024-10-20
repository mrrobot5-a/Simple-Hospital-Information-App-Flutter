// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:second_project/widgets/TextHeading.dart';

import '../widgets/HeaderOfHomeView.dart';
import 'Chat.dart';
import 'ReviewsScreen.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderOfHomeView(),
            TextHeading(text: "About"),
            Card(
              textOne: "Clepatra Hospital",
              icon1: Icon(Icons.local_hospital),
              textTwo: "19-10-2024",
              icon2: Icon(Icons.timelapse),
              textThree: "2 Gamaa Street, Giza",
              icon3: Icon(Icons.location_on),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.black,
              indent: 30,
              endIndent: 30,
            ),
            TextHeading(text: "Contact Info"),
            Card(
              textOne: "DrAhmed@gmail.com",
              icon1: Icon(Icons.mail),
              textTwo: "+20 123 456 789",
              icon2: Icon(Icons.phone),
              textThree: "Cairo, Egypt",
              icon3: Icon(Icons.location_on),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Button(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Chat()),
                  );
                },
                text: "💬 Chat With Dr. Ahmed",
                color: Color(0xff4cb151),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Button(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReviewsScreen()),
                  );
                },
                text: "Check Our Reviews",
                color: Color(0xff265ed7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const Button({
    required this.color,
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onPressed,
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ReviewsScreen(),
        //   ),
        // );

        child: Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: color),
          child: Center(
            child: Text(text,
                style: TextStyle(
                    fontFamily: 'Flux',
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String textOne;
  final String textTwo;
  final String textThree;
  final Icon icon1;
  final Icon icon2;
  final Icon icon3;

  const Card({
    required this.textOne,
    required this.icon1,
    required this.textTwo,
    required this.icon2,
    required this.textThree,
    required this.icon3,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Color(0xffe5f3fd),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff265ed7),
                    child: Icon(
                      icon1.icon,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    textOne,
                    style: TextStyle(
                      fontFamily: 'Flux',
                      fontSize: 21,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff265ed7),
                    child: Icon(
                      icon2.icon,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    textTwo,
                    style: TextStyle(
                      fontFamily: 'Flux',
                      fontSize: 21,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff265ed7),
                    child: Icon(
                      icon3.icon,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    textThree,
                    style: TextStyle(
                      fontFamily: 'Flux',
                      fontSize: 21,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
